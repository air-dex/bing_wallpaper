TEMPLATE = app

QT += qml quick

!android {
	QT += widgets
}

CONFIG += c++11

# C++ sources
include(src/sources.pri)

# QML sources
include(qml/qml.pri)

# Resources
include(res/res.pri)

DISTFILES += \
	.gitignore \
	README.md \
	LICENSE \
	js/sprintf.js \
	js/sprintf-wrapper.js \
	src/windows/.gitkeep \
	src/linux/.gitkeep


# Plateform specific
linux: {
	QMAKE_CXXFLAGS += $$system(pkg-config gtkmm-3.0 --cflags)
	LIBS += $$system(pkg-config gtkmm-3.0 --libs)

	CONFIG += no_keywords
	#QMAKE_CXXFLAGS += $$system(pkg-config gtk+-3.0 --cflags --libs)
} else:win32 {
	# Nothing for the moment
}

# Default rules for deployment.
include(deployment.pri)
