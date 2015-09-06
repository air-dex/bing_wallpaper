#include "actioncontroller.hpp"
#include "bingwallpaper.hpp"
#include <QtQml>
#include <QJsonDocument>
#include <QJsonParseError>
#include <QNetworkRequest>
#include <QUrl>
#include <QUrlQuery>

QString ActionController::DATE_FORMAT = "yyyyMMdd";

ActionController::ActionController() : QObject() {}

void ActionController::declareQML() {
	// @uri BWControls
	qmlRegisterType<ActionController>(
		BingWallpaper::QML_LIBRARY_NAME.toLatin1().constData(),
		BingWallpaper::MAJOR_VERSION, BingWallpaper::MINOR_VERSION,
		"ActionController"
	);
}

void ActionController::downloadImage() {
	// TODO
}

void ActionController::setImageAsWallpaper() {
	// TODO
}

void ActionController::getImageMetaData(QDateTime date, QString countryCode) {
	// TODO
	QString imageID("");
	imageID.append(date.toString(ActionController::DATE_FORMAT)).append("-").append(countryCode);

	// Building the URL
	QUrl issURL(BingWallpaper::ISS_BINGIMAGES_API_URL);
	QUrlQuery getArgs(issURL.query());
	getArgs.addQueryItem("id", imageID);
	issURL.setQuery(getArgs);

	// Building the request
	QNetworkRequest request(issURL);
	request.setOriginatingObject(this);

	// Sending the request
	connect(BingWallpaper::NETWORK_MANAGER, &QNetworkAccessManager::finished,
			this, &ActionController::imageMetadataFetched);
	BingWallpaper::NETWORK_MANAGER->get(request);
}

void ActionController::imageMetadataFetched(QNetworkReply * reply) {
	if (reply == NULL || reply->request().originatingObject() != this) {
		return;
	}

	disconnect(BingWallpaper::NETWORK_MANAGER, &QNetworkAccessManager::finished,
			   this, &ActionController::imageMetadataFetched);

	// Return error if code != 200
	if (reply->attribute(QNetworkRequest::HttpStatusCodeAttribute) != 200) {
		QString errorMessage("");
		errorMessage.append("Error ")
				.append(reply->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt())
				.append("(").append(reply->attribute(QNetworkRequest::HttpReasonPhraseAttribute).toString()).append(")")
				.append(": ").append(reply->errorString());
		emit imageMetadataError(errorMessage);
		return;
	}

	// Return if response is "false"
	QByteArray rawResponse = reply->readAll();
	if (rawResponse == "false") {
		QUrl apiURL = reply->request().url();

		if (apiURL.hasQuery()) {
			QUrlQuery query(apiURL.query());
			QString imageID = query.queryItemValue("id");
			QString dateStr = imageID.split("-")[0];
			emit noImageMetadata(QDateTime::fromString(dateStr, ActionController::DATE_FORMAT));
		}
		else {
			QString errorMessage("");
			errorMessage.append("Unexpected URL call: ").append(apiURL.toString());
			emit imageMetadataError(errorMessage);
		}
		return;
	}

	reply->close();

	// Parsing response
	QJsonParseError parseErr;
	QJsonDocument imageMetadata = QJsonDocument::fromJson(rawResponse, &parseErr);

	if (parseErr.error == QJsonParseError::NoError) {
		if (imageMetadata.isObject()) {
			emit imageMetadataRetrieved(imageMetadata.object());
		}
		else {
			emit imageMetadataError("Image metadata should be JSON objects.");
		}
	}
	else {
		QString errorMessage("");
		errorMessage.append("Problem while parsing image metadatas: ")
				.append(parseErr.errorString());
		emit imageMetadataError(errorMessage);
	}
}
