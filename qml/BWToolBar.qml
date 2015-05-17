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
