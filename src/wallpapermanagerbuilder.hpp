#ifndef WALLPAPERMANAGERBUILDER_HPP
#define WALLPAPERMANAGERBUILDER_HPP

#include "wallpapermanager.hpp"

/// @class WallpaperManagerBuilder
/// @brief WallpaperManager Builder
class WallpaperManagerBuilder
{
	public:
		/// @fn WallpaperManagerBuilder();
		/// @brief Constructor
		WallpaperManagerBuilder();

		/// @fn static WallpaperManager * getWallpaperManager();
		/// @brief Building a WallpaperManager
		/// \return A WallpaperManager whose type depends on the OS.
		static WallpaperManager * getWallpaperManager();
};

#endif // WALLPAPERMANAGERBUILDER_HPP
