TEMPLATE = app

QT += qml quick widgets

HEADERS += \
	src/actioncontroller.hpp \
	src/bingwallpaper.hpp \
	src/wallpapermanager.hpp \
	src/systemmanager.hpp

SOURCES += src/main.cpp \
	src/actioncontroller.cpp \
	src/bingwallpaper.cpp \
	src/wallpapermanager.cpp \
	src/systemmanager.cpp

# QML files
qml_files.source = ui/qml
qml_files.target = ui

DEPLOYMENTFOLDERS += qml_files

RESOURCES += \
	resources.qrc

DISTFILES += \
	.gitignore \
	README.md \
	LICENSE \
	res/flags/Australia.svg \
	res/flags/Canada.svg \
	res/flags/China.svg \
	res/flags/France.svg \
	res/flags/Germany.svg \
	res/flags/Japan.svg \
	res/flags/New_Zealand.svg \
	res/flags/United_Kingdom.svg \
	res/flags/United_States.svg \
	js/sprintf.js \
	js/sprintf-wrapper.js \
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
	qml/BWCalendarImage.qml \
	src/windows/.gitkeep \
	src/linux/.gitkeep

# Plateform specific
linux: {
	HEADERS += \
		src/linux/linuxwm.hpp \
		src/linux/gnomewm.hpp

	SOURCES += \
		src/linux/linuxwm.cpp \
		src/linux/gnomewm.cpp

	QMAKE_CXXFLAGS += $$system(pkg-config gtkmm-3.0 --cflags)
	LIBS += $$system(pkg-config gtkmm-3.0 --libs)

	CONFIG += no_keywords
	#QMAKE_CXXFLAGS += $$system(pkg-config gtk+-3.0 --cflags --libs)
} else:win32 {
	DISTFILES += \
		src/linux/linuxwm.hpp \
		src/linux/linuxwm.cpp \
		src/linux/gnomewm.hpp \
		src/linux/gnomewm.cpp \
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
