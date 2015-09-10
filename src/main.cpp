#include <QApplication>
#include <QQmlApplicationEngine>
#include "actioncontroller.hpp"
#include "bingwallpaper.hpp"

int main(int argc, char *argv[])
{
	QApplication app(argc, argv);

	BingWallpaper::beforeBingWallpaper();
	ActionController::declareQML();

	QQmlApplicationEngine engine;
	engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

	int res = app.exec();
	BingWallpaper::afterBingWallpaper();
	return res;
}
