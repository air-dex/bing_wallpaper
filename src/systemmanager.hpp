#ifndef SYSTEMMANAGER_HPP
#define SYSTEMMANAGER_HPP

#include <QSettings>
#include "wallpapermanager.hpp"

/// @class SystemManager
/// @brief Entity managing OS-related stuff
class SystemManager
{
	public:
		SystemManager();
		virtual ~SystemManager();

		void setDefaultWallpaper();

	protected:
		WallpaperManager * wm;
		QSettings settings;
};

#endif // SYSTEMMANAGER_HPP
