/// @file bingwallpaper.cpp
/// @brief Utilities and constants
/// @author Romain Ducher
///
/// @section LICENSE
///
/// Copyright 2015 Romain Ducher
///
/// This file is part of Bing Wallpaper.
///
/// Bing Wallpaper is free software: you can redistribute it and/or modify
/// it under the terms of the GNU Lesser General Public License as published by
/// the Free Software Foundation, either version 3 of the License, or
/// (at your option) any later version.
///
/// Bing Wallpaper is distributed in the hope that it will be useful,
/// but WITHOUT ANY WARRANTY; without even the implied warranty of
/// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
/// GNU Lesser General Public License for more details.
///
/// You should have received a copy of the GNU Lesser General Public License
/// along with Bing Wallpaper. If not, see <http://www.gnu.org/licenses/>.

#ifndef BINGWALLPAPER_HPP
#define BINGWALLPAPER_HPP

#include <QString>
#include <QNetworkAccessManager>

namespace BingWallpaper {
	/// @brief Name of the QML library containing all the Bing Wallpaper C++
	/// classes available for pure QML objects.
	extern const QString QML_LIBRARY_NAME;

	/// @brief Bing Wallpaper major version.
	extern const int MAJOR_VERSION;

	/// @brief Bing Wallpaper minor version.
	extern const int MINOR_VERSION;

	/// @brief Bing Wallpaper bugfix version.
	extern const int BUGFIX_VERSION;

	/// @brief Network manager
	extern QNetworkAccessManager * NETWORK_MANAGER;

	/// @brief Root url to retrieve Bing images metadata.
	extern const QString ISS_BINGIMAGES_API_URL;

	/// @fn void afterBingWallpaper();
	/// @brief Things to do between QApplication creation and program execution.
	void beforeBingWallpaper();

	/// @fn void afterBingWallpaper();
	/// @brief Things to do after program's main execution
	void afterBingWallpaper();
}

#endif // BINGWALLPAPER_HPP
