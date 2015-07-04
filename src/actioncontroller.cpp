#include "actioncontroller.hpp"
#include <QtQml>
#include "bingwallpaper.hpp"
#include <cstdlib>

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
	qDebug() << "Country: " << countryCode << ", date: " << date.toString();
}
