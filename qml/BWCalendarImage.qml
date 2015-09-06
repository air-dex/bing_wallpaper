import QtQuick 2.4
import QtQuick.Controls 1.3
import "qrc:/js-sprintf.js" as Sprintf

Rectangle {
	id: bwCalendarImage
	color: constants.defaultBackgroundCalendarColor

	property alias imageSource: picture.source

	property url bingUrlSource

	property url issUrlSource

	Constants { id: constants }

	Image {
		id: picture
		fillMode: Image.PreserveAspectFit
		anchors.fill: parent
		visible: true

		onStatusChanged: {
			switch (picture.status) {
				case Image.Error:
					// Try the ISS URL instead of the Bing one.
					if (picture.source == bwCalendarImage.bingUrlSource) {
						picture.source = bwCalendarImage.issUrlSource;
					}
					else {
						// Error with the error message
						bwCalendarImage.setError(Sprintf.sprintf(qsTr("Cannot load image at %s"), picture.source));
					}
					break;

				case Image.Ready:
					loadingIndicator.running = false;
					break;

				default:
					break;
			}

		}
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

	BusyIndicator {
		id: loadingIndicator
		anchors.centerIn: parent
		running: false
	}

	states: [
		// Default state: when an image is displayed
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

		// No images are displayed.
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
			PropertyChanges {
				target: loadingIndicator
				running: false
			}
		},

		// An error occured while displaying an image.
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
			PropertyChanges {
				target: loadingIndicator
				running: false
			}
		}
	]

	function setError(errorMsg) {
		error_text.text = errorMsg;
		loadingIndicator.running = false;
		bwCalendarImage.state = "error";
	}

	function noImage(noImageDate) {
		bwCalendarImage.state = "noImage";
		loadingIndicator.running = false;
		error_text.text = Sprintf.sprintf(qsTr("No image for this date: %s"), noImageDate.toLocaleDateString());
	}

	function setImage(imageURL) {
		bwCalendarImage.state = "";
		bwCalendarImage.bingUrlSource = "http://bing.com".concat(imageURL.url);
		bwCalendarImage.issUrlSource = imageURL.imageurl;
		bwCalendarImage.imageSource = bwCalendarImage.bingUrlSource;
	}

	function imageLoading() {
		loadingIndicator.running = true;
	}
}
