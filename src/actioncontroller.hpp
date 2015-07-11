#ifndef ACTIONCONTROLLER_HPP
#define ACTIONCONTROLLER_HPP

#include <QObject>
#include <QDateTime>
#include <QString>
#include <QNetworkReply>
#include <QJsonObject>

class ActionController : public QObject
{
	Q_OBJECT

	public:
		ActionController();

		static void declareQML();

		Q_INVOKABLE void downloadImage();

		Q_INVOKABLE void setImageAsWallpaper();

		Q_INVOKABLE void getImageMetaData(QDateTime date, QString countryCode);

	signals:
		void imageMetadataError(QString error);
		void noImageMetadata();
		void imageMetadataRetrieved(QJsonObject metadata);

	public slots:
		void imageMetadataFetched(QNetworkReply * reply);
};

#endif // ACTIONCONTROLLER_HPP
