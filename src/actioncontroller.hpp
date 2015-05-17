#ifndef ACTIONCONTROLLER_HPP
#define ACTIONCONTROLLER_HPP

#include <QObject>

class ActionController : public QObject
{
	Q_OBJECT

	public:
		ActionController();

		static void declareQML();

		Q_INVOKABLE void downloadImage();

		Q_INVOKABLE void setImageAsWallpaper();

		Q_INVOKABLE void getImageMetaData();

	signals:

	public slots:
};

#endif // ACTIONCONTROLLER_HPP
