#ifndef GNOMEWM_HPP
#define GNOMEWM_HPP

#include "linuxwm.hpp"

#include <giomm/settings.h>

class GnomeWM : public LinuxWM
{
	public:
		GnomeWM();
		void setDefaultWallpaper(QString wallpaperPath);
		void setWallpaperOption(QString wallpaperEnum);

	protected:
		Glib::RefPtr<Gio::Settings> backgroundSettings;
};

#endif // GNOMEWM_HPP
