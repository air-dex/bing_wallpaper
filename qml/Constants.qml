/// @file Constants.qml
/// @brief Some constants in the QML side of the application.
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

import QtQuick 2.4

QtObject {
	/// @brief Default spacing for objects
	property int default_spacing: 5

	/// @brief Width for BWCountryChoices
	property int country_choice_width: 75

	/// @brief Allowed country selector height for a row
	property int country_select_row_height: 40

	property string fontName: "Ubuntu"

	property int fontSize: 12

	property string noImageBackgroundCalendarColor: "lemonchiffon"

	property string noImageTextCalendarColor: "darkkhaki"

	property string errorBackgroundCalendarColor: "darksalmon"

	property string errorTextCalendarColor: "darkred"

	property string defaultBackgroundCalendarColor: "white"

	property string defaultTextCalendarColor: "black"
}
