#include "systemmanager.hpp"

#include "wallpapermanagerbuilder.hpp"

SystemManager::SystemManager() :
	wm(WallpaperManagerBuilder::getWallpaperManager()),
	settings()
{}

SystemManager::~SystemManager()
{
	if (wm) {
		delete wm;
	}
}

void SystemManager::setDefaultWallpaper()
{
	// TODO
	QString s;
	wm->setDefaultWallpaper(s);
}

