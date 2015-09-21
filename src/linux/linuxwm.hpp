#ifndef LINUXWM_HPP
#define LINUXWM_HPP

#include "../wallpapermanager.hpp"
#define GET_WM() return LinuxWM::getLinuxWM()

extern WallpaperManager * getWallpaperManager();

class LinuxWM : public WallpaperManager
{
	public:
		LinuxWM();
		static LinuxWM * getLinuxWM();
};

#endif // LINUXWM_HPP
