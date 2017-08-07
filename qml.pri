# QML sources

JS_FILES = \
	js/sprintf.js \
	js/sprintf-wrapper.js

QML_FILES = \
	qml/main.qml \
	qml/BWMenuBar.qml \
	qml/BWToolBar.qml \
	qml/BWStatusBar.qml \
	qml/BWPanel.qml \
	qml/BWCountrySelect.qml \
	qml/BWCalendar.qml \
	qml/BingWallpaper.qml \
	qml/BWCountryChoice.qml \
	qml/BWCountryFlag.qml \
	qml/Constants.qml \
	qml/BWCalendarImage.qml

DISTFILES += \
	$${JS_FILES} \
	$${QML_FILES}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# QML files
qml_files.source = ui/qml
qml_files.target = ui

DEPLOYMENTFOLDERS += qml_files
