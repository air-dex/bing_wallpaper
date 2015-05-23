TEMPLATE = app

QT += qml quick widgets

HEADERS += \
	src/actioncontroller.hpp \
	src/bingwallpaper.hpp

SOURCES += src/main.cpp \
	src/actioncontroller.cpp \
	src/bingwallpaper.cpp

# QML files
qml_files.source = ui/qml
qml_files.target = ui

DEPLOYMENTFOLDERS += qml_files

RESOURCES += \
	resources.qrc

DISTFILES += \
	.gitignore \
	qml/main.qml \
	qml/BWMenuBar.qml \
    qml/BWToolBar.qml \
    qml/BWStatusBar.qml \
    qml/BWPanel.qml \
    qml/BWCountrySelect.qml \
    qml/BWCalendar.qml \
    qml/BingWallpaper.qml

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
