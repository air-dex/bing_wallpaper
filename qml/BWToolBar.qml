/// @file BWToolBar.qml
/// @brief Application's tool bar
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
import BWControls 0.1

ToolBar {
	id: bwToolBar

	property ActionController controller: ActionController {}

	RowLayout {
		anchors.fill: parent

		ToolButton {
			iconName: "emblem-downloads"
			onClicked: controller.downloadImage()
		}

		ToolButton {
			iconName: "preferences-desktop-wallpaper"
			onClicked: controller.setImageAsWallpaper()
		}

		ToolButton {
			iconName: "emblem-system"
			onClicked: console.log("TODO : settings")
		}

		ToolButton {
			iconName: "help-about"
			onClicked: console.log("TODO : about")
		}

		ToolButton {
			iconName: "system-help"
			onClicked: console.log("TODO : help")
		}

		ToolButton {
			iconName: "application-exit"
			onClicked: Qt.quit()
		}

		Item {
			Layout.fillWidth: true
		}
	}
}
