/// @file BWPanel.qml
/// @brief Application's content area.
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
import QtQuick.Layouts 1.1
import BWControls 0.1

Item {
	id: bwPanel

	Constants { id: constants }

	ActionController {
		id: controller

		onImageMetadataError: {
			// TODO
			console.log("Error : " + error);
		}

		onNoImageMetadata: console.log("No image for this date")	// TODO

		onImageMetadataRetrieved: {
			calendar.imageSource = "http://bing.com".concat(metadata.url);
		}
	}

	BWCountrySelect {
		id: countrySelect
		width: bwPanel.width
		height: constants.country_select_row_height * countrySelect.rows

		anchors {
			top: bwPanel.top
			horizontalCenter: bwPanel.horizontalCenter
		}

		onCountryCodeChanged: {
			bwPanel.getImageMetaData();
		}
	}

	BWCalendar {
		id: calendar
		width: bwPanel.width
		height: bwPanel.height - countrySelect.height - 5 * constants.default_spacing

		anchors {
			horizontalCenter: bwPanel.horizontalCenter
			bottom: bwPanel.bottom
		}

		onSelectedDateChanged: {
			bwPanel.getImageMetaData();
		}
	}

	function getImageMetaData() {
		if (countrySelect.getSelectedCountryCode() !== null) {
			controller.getImageMetaData(
				calendar.selectedDate,
				countrySelect.getSelectedCountryCode()
			);
		}
	}
}

