#ifndef ACTIONCONTROLLER_HPP
#define ACTIONCONTROLLER_HPP

#include <QObject>
#include <QDateTime>
#include <QString>
#include <QNetworkReply>
#include <QJsonObject>
#include "systemmanager.hpp"

class ActionController : public QObject
{
	Q_OBJECT

	public:
		ActionController();
		~ActionController();

		static void declareQML();

		Q_INVOKABLE void downloadImage();

		Q_INVOKABLE void setImageAsWallpaper();

		Q_INVOKABLE void getImageMetaData(QDateTime date, QString countryCode);

	//Q_SIGNALS:
		Q_SIGNAL void imageMetadataError(QString error);
		Q_SIGNAL void noImageMetadata(QDateTime noImageDate);
		Q_SIGNAL void imageMetadataRetrieved(QJsonObject metadata);

	//Q_SLOT:
		Q_SLOT void imageMetadataFetched(QNetworkReply * reply);

	protected:
		static QString DATE_FORMAT;
		static int ONE_SECOND_TIMER;

		/// @brief Operating System contact
		SystemManager * os;

		// Timeout timer management
		int timeoutTimerID;
		void startTimeoutTimer();
		void stopTimeoutTimer();
		void timerEvent(QTimerEvent * event);
};

#endif // ACTIONCONTROLLER_HPP
