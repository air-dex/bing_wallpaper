import QtQuick 2.0
import "qrc:/js-sprintf.js" as Sprintf

Rectangle {
	id: bwCalendarImage
	color: constants.defaultBackgroundCalendarColor

	property alias imageSource: picture.source

	Constants { id: constants }

	Image {
		id: picture
		fillMode: Image.PreserveAspectFit
		anchors.fill: parent
		visible: true
	}

	Text {
		id: error_text
		text: ""
//		font: {
//			family: constants.fontName
//			pointSize: constants.fontSize
//		}
		font.family: constants.fontName
		font.pointSize: constants.fontSize
		anchors.fill: parent
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
		wrapMode: Text.WordWrap
		visible: false
	}

	states: [
		State {
			name: ""
			PropertyChanges {
				target: bwCalendarImage
				color: constants.defaultBackgroundCalendarColor
			}
			PropertyChanges {
				target: picture
				visible: true
			}
			PropertyChanges {
				target: error_text
				visible: false
				color: constants.defaultTextCalendarColor
			}
		},
		State {
			name: "noImage"
			PropertyChanges {
				target: bwCalendarImage
				color: constants.noImageBackgroundCalendarColor
			}
			PropertyChanges {
				target: picture
				visible: false
			}
			PropertyChanges {
				target: error_text
				visible: true
				color: constants.noImageTextCalendarColor
			}
		},
		State {
			name: "error"
			PropertyChanges {
				target: bwCalendarImage
				color: constants.errorBackgroundCalendarColor
			}
			PropertyChanges {
				target: picture
				visible: false
			}
			PropertyChanges {
				target: error_text
				visible: true
				color: constants.errorTextCalendarColor
			}
		}
	]

	function setError(errorMsg) {
		error_text.text = errorMsg;
		bwCalendarImage.state = "error";
	}

	function noImage(noImageDate) {
		bwCalendarImage.state = "noImage";
		error_text.text = Sprintf.sprintf(qsTr("No image for this date: %s"), noImageDate);
	}

	function setImage(imageURL) {
		bwCalendarImage.state = "";
		bwCalendarImage.imageSource = "http://bing.com".concat(imageURL.url);
	}
}
