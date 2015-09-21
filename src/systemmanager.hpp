#ifndef SYSTEMMANAGER_HPP
#define SYSTEMMANAGER_HPP

#include <QSettings>
#include "wallpapermanager.hpp"

class SystemManager
{
	public:
		SystemManager();

	protected:
		WallpaperManager * wm;
		QSettings settings;
};

#endif // SYSTEMMANAGER_HPP
