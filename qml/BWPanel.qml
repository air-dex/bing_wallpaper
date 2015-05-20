import QtQuick 2.4

Rectangle {
	width: 100
	height: 62

	BWCountrySelect {
		id: countrySelect

		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}
	}

	BWCalendar {
		id: calendar

		anchors {
			bottom: parent.bottom
			left: parent.left
			right: parent.right
		}
	}
}

