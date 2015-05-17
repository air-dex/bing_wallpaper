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
