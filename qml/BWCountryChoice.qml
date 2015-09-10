/// @file BWCountryChoice.qml
/// @brief Country choice for Bing images
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
import QtQuick.Controls 1.3

/// @class BWCountryChoice
/// @brief Component to choice a country. It is a radio button whose legend is
/// the flag of the chosen country if the button is checked.
Row {
	id: bwCountryChoice

	width: constants.country_choice_width

	/// @brief ExclusiveGroup for the radio Button
	/// @see http://doc.qt.io/qt-5/qml-qtquick-controls-radiobutton.html#exclusiveGroup-prop
	property alias exclusiveGroup: choice.exclusiveGroup

	/// @brief Country code
	/// @see BWCountryFlag.country_code
	property string country_code

	Constants { id: constants }

	// Radio button
	RadioButton {
		id: choice
		anchors.verticalCenter: choice_flag.verticalCenter

		/// @brief Button value
		property alias country_code: bwCountryChoice.country_code
	}

	// Flag label
	BWCountryFlag {
		id: choice_flag
		width: bwCountryChoice.width - choice.width - constants.default_spacing
		height: bwCountryChoice.height
		country_code: bwCountryChoice.country_code
	}
}
