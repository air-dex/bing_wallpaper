#ifndef WINDOWSWM_HPP
#define WINDOWSWM_HPP

#include "../wallpapermanager.hpp"

class WindowsWM : public WallpaperManager
{
	public:
		WindowsWM();

		virtual void setDefaultWallpaper(QString wallpaperPath);
		virtual void setWallpaperOption(QString wallpaperEnum);
};

#endif // WINDOWSWM_HPP
