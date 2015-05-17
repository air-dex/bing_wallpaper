#include <QApplication>
#include <QQmlApplicationEngine>
#include "actioncontroller.hpp"

int main(int argc, char *argv[])
{
	QApplication app(argc, argv);

	ActionController::declareQML();

	QQmlApplicationEngine engine;
	engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

	return app.exec();
}
