#include "actioncontroller.hpp"
#include <QtQml>
#include "bingwallpaper.hpp"

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

void ActionController::getImageMetaData() {
	// TODO
}
