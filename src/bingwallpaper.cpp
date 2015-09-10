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

#include "bingwallpaper.hpp"

const QString BingWallpaper::QML_LIBRARY_NAME = "BWControls";

// Reyn Tweets major version.
const int BingWallpaper::MAJOR_VERSION = 0;

// Reyn Tweets minor version.
const int BingWallpaper::MINOR_VERSION = 1;

// Reyn Tweets bugfix version.
const int BingWallpaper::BUGFIX_VERSION = 0;

// Network manager
QNetworkAccessManager * BingWallpaper::NETWORK_MANAGER = NULL;

// Root url to retrieve Bing images metadata.
const QString BingWallpaper::ISS_BINGIMAGES_API_URL = "http://www.istartedsomething.com/bingimages/getimage.php";

// Things to do after program's main execution
void BingWallpaper::beforeBingWallpaper() {
	NETWORK_MANAGER = new QNetworkAccessManager;
}

// Things to do after program's main execution
void BingWallpaper::afterBingWallpaper() {
	delete NETWORK_MANAGER;
}
