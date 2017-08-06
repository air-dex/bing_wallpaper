#include "wallpapermanager.hpp"

WallpaperManager::WallpaperManager() : QObject() {}

QStringList WallpaperManager::getWallpaperOptions() {
	return wallpaperOptions;
}
