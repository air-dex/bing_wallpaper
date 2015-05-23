/// @file BWMenuBar.qml
/// @brief Application's menu bar
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
import BWControls 0.1

MenuBar {
	id: bwMenuBar

	property ActionController controller: ActionController {}

	Menu {
		title: qsTr("Image")

		MenuItem {
			text: qsTr("Download")
			shortcut: StandardKey.Save
			onTriggered: controller.downloadImage()
		}

		MenuItem {
			text: qsTr("Set as wallpaper")
			onTriggered: controller.setImageAsWallpaper()
		}

		MenuSeparator {}

		MenuItem {
			text: qsTr("Settings")
			onTriggered: console.log("TODO : settings")
		}

		MenuSeparator {}

		MenuItem {
			text: qsTr("About")
			onTriggered: console.log("TODO : à propos de")
		}

		MenuItem {
			text: qsTr("Help")
			shortcut: StandardKey.HelpContents
			onTriggered: console.log("TODO : aide")
		}

		MenuSeparator {}

		MenuItem {
			text: "Quitter"
			shortcut: StandardKey.Quit
			onTriggered: Qt.quit()
		}
	}


	/*
	ActionController {
		id: controller
	}//*/
}
