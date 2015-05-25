/// @file BWCountryFlag.qml
/// @brief Rendering a flag
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
import "qrc:/js-sprintf.js" as Sprintf

/// @class BWCountryFlag
/// @brief QML Entity to render a flag properly. A flag is stored in an SVG image.
Image {
	id: bwCountryFlag

	/// @brief Country code (ISO 3166-1-alpha-2), used to retrieve the flag.
	/// @see https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
	property string country_code

	source: Sprintf.sprintf("qrc:/flag-%s.svg", bwCountryChoice.country_code)
	sourceSize.height: bwCountryFlag.height
	fillMode: Image.PreserveAspectFit
}
