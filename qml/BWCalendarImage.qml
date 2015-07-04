import QtQuick 2.0

Rectangle {
	id: bwCalendarImage
	color: "white"

	property alias imageSource: picture.source

	Image {
		id: picture
		fillMode: Image.PreserveAspectFit

		anchors.fill: parent
	}
}
