#ifndef WALLPAPERMANAGER_HPP
#define WALLPAPERMANAGER_HPP

#include <QObject>

class WallpaperManager : public QObject
{
	Q_OBJECT

	public:
		WallpaperManager();
		static WallpaperManager * getManager();
		virtual void setDefaultWallpaper(QString wallpaperPath) = 0;
		virtual void setWallpaperOption(QString wallpaperEnum) = 0;
		QStringList getWallpaperOptions();

	protected:
		QStringList wallpaperOptions;
};

#endif // WALLPAPERMANAGER_HPP
