#ifndef ACTIONCONTROLLER_HPP
#define ACTIONCONTROLLER_HPP

#include <QObject>
#include <QDateTime>
#include <QString>

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

	public slots:
};

#endif // ACTIONCONTROLLER_HPP
