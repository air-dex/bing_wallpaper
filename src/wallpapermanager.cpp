#include "wallpapermanager.hpp"

#ifdef Q_OS_WIN
	#include "./windows/windowswm.hpp"
#elif defined(Q_OS_LINUX)
	#include "./linux/linuxwm.hpp"
#endif

WallpaperManager::WallpaperManager() : QObject() {}

WallpaperManager * WallpaperManager::getManager() {
	// TODO

	/*
	 * if (windows) return WindowsWM()
	 * else if (linux) {
	 *  detectDesktopenvironment();
	 *  return new LinuxWM()
	 * }
	 */

	#ifdef GET_WM
		GET_WM();
	#else
		return NULL;
	#endif
}

QStringList WallpaperManager::getWallpaperOptions() {
	return wallpaperOptions;
}
