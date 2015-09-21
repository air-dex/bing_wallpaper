#include "gnomewm.hpp"

GnomeWM::GnomeWM() :
	LinuxWM(),
	backgroundSettings(Gio::Settings::create("org.gnome.desktop.background"))
{
	wallpaperOptions
		<< "none"
		<< "wallpaper"
		<< "centered"
		<< "scaled"
		<< "stretched"
		<< "zoom"
		<< "spanned"
	;
}

void GnomeWM::setDefaultWallpaper(QString wallpaperPath) {
	backgroundSettings->set_string("picture-uri", wallpaperPath.toStdString());
}

void GnomeWM::setWallpaperOption(QString wallpaperEnum) {
	backgroundSettings->set_string("picture-options", wallpaperEnum.toStdString());
}
