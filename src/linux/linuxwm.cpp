#include "linuxwm.hpp"

#include <QProcessEnvironment>
#include "gnomewm.hpp"

LinuxWM::LinuxWM() : WallpaperManager() {}

LinuxWM * LinuxWM::getLinuxWM() {
	QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
	QString xdgCurrentSession = env.value("XDG_CURRENT_SESSION");
	QString desktopSession = env.value("DESKTOP_SESSION");

	if (xdgCurrentSession == "Unity") {
		// Ubuntu Unity desktop
		return new GnomeWM();
	}
	else if (xdgCurrentSession == "GNOME") {
		// GNOME desktop
		return new GnomeWM();
	}
	else {
		// Desktop environment not supported.
		return NULL;
	}
}
