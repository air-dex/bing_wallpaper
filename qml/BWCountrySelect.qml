/// @file BWCountrySelect.qml
/// @brief Country selector for Bing images
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
import QtQuick.Layouts 1.1

/// @class BWCountrySelect
/// @brief Country selector for images.
GroupBox {
	id: bwCountrySelect
	title: qsTr('Country')

	Constants { id: constants }

	Grid {
		rows: 3
		columns: 3
		columnSpacing: constants.default_spacing
		rowSpacing: constants.default_spacing

		// Radio buttons group
		ExclusiveGroup { id: flagsGroup }

		////////////////////
		// Bing countries //
		////////////////////

		// Australia
		BWCountryChoice {
			id: australia
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "au"
		}

		// Canada
		BWCountryChoice {
			id: canada
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "ca"
		}

		// China
		BWCountryChoice {
			id: china
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "cn"
		}

		// France
		BWCountryChoice {
			id: france
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "fr"
		}

		// Germany
		BWCountryChoice {
			id: germany
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "de"
		}

		// Japan
		BWCountryChoice {
			id: japan
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "jp"
		}

		// New Zealand
		BWCountryChoice {
			id: new_zealand
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "nz"
		}

		// United Kingdom
		BWCountryChoice {
			id: united_kingdom
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "uk"
		}

		// United States of America
		BWCountryChoice {
			id: united_states
			width: bwCountrySelect.width / 3
			height: bwCountrySelect.height / 3
			exclusiveGroup: flagsGroup
			country_code: "us"
		}
	}

	/// @fn function getSelectedCountryCode();
	/// @brief Getting the selected country's country code
	/// @return The selected country code.
	function getSelectedCountryCode() {
		return (flagsGroup.current === null) ? null : flagsGroup.current.country_code;
	}
}
