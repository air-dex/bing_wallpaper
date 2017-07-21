/// @file main.qml
/// @brief Application's window.
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

ApplicationWindow {
	id: bing_wallpaper
	title: qsTr("Bing Wallpaper")
	visible: true

	ActionController { id:controller }

	menuBar: BWMenuBar {}

	toolBar: BWToolBar {
		controller: controller
	}

	statusBar: BWStatusBar {}

	BWPanel {
		id: panel
		anchors.fill: parent
	}
}
