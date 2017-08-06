#include "wallpapermanagerbuilder.hpp"

#ifdef Q_OS_WIN
	#include "windows/windowswm.hpp"
#elif defined(Q_OS_LINUX)
	#include "./linux/linuxwm.hpp"
#endif

WallpaperManagerBuilder::WallpaperManagerBuilder() {}

WallpaperManager * WallpaperManagerBuilder::getWallpaperManager()
{
	#ifdef Q_OS_WIN
		return new WindowsWM();
	#endif
}
