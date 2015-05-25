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

Column {
	id: bwPanel
	spacing: 0

	BWCountrySelect {
		id: countrySelect

		height: bwPanel.height / 4

		anchors {
			left: bwPanel.left
			right: bwPanel.right
		}
	}

	BWCalendar {
		id: calendar

		height: bwPanel.height / 2

		anchors {
			left: bwPanel.left
			right: bwPanel.right
		}
	}
}

