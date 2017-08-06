TEMPLATE = app

QT += qml quick widgets

HEADERS += \
	src/actioncontroller.hpp \
	src/bingwallpaper.hpp \
	src/wallpapermanager.hpp \
	src/systemmanager.hpp \
	src/wallpapermanagerbuilder.hpp \
	src/systemmanagerbuilder.hpp

SOURCES += src/main.cpp \
	src/actioncontroller.cpp \
	src/bingwallpaper.cpp \
	src/wallpapermanager.cpp \
	src/systemmanager.cpp \
	src/wallpapermanagerbuilder.cpp \
	src/systemmanagerbuilder.cpp


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

# OS-related sources
WINDOWS_HEADERS = \
	src/windows/windowsmanager.hpp \
	src/windows/windowswm.hpp

WINDOWS_SOURCES = \
	src/windows/windowsmanager.cpp \
	src/windows/windowswm.cpp

LINUX_HEADERS += \
	src/linux/linuxwm.hpp \
	src/linux/gnomewm.hpp

LINUX_SOURCES += \
	src/linux/linuxwm.cpp \
	src/linux/gnomewm.cpp

linux: {
	HEADERS += $${LINUX_HEADERS}

	SOURCES += $${LINUX_SOURCES}

	DISTFILES += $${WINDOWS_HEADERS} $${WINDOWS_SOURCES}

	QMAKE_CXXFLAGS += $$system(pkg-config gtkmm-3.0 --cflags)
	LIBS += $$system(pkg-config gtkmm-3.0 --libs)

	CONFIG += no_keywords
	#QMAKE_CXXFLAGS += $$system(pkg-config gtk+-3.0 --cflags --libs)
} else:win32 {
	HEADERS += $${WINDOWS_HEADERS}

	SOURCES += $${WINDOWS_SOURCES}

	DISTFILES += $${LINUX_HEADERS} $${LINUX_SOURCES}
}

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)
