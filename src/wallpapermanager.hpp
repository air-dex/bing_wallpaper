#ifndef WALLPAPERMANAGER_HPP
#define WALLPAPERMANAGER_HPP

#include <QObject>

/// @class WallpaperManager
/// @brief Generic class for wallpaper management
///
/// The class is supposed to be independent from the operating system.
class WallpaperManager : public QObject
{
	Q_OBJECT

	public:
		/// @fn WallpaperManager();
		/// @brief Constructor
		WallpaperManager();

		virtual void setDefaultWallpaper(QString wallpaperPath) = 0;
		virtual void setWallpaperOption(QString wallpaperEnum) = 0;
		QStringList getWallpaperOptions();

	protected:
		QStringList wallpaperOptions;
};

#endif // WALLPAPERMANAGER_HPP
