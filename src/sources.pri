# C++ sources

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
} else:win32 {
	HEADERS += $${WINDOWS_HEADERS}

	SOURCES += $${WINDOWS_SOURCES}

	DISTFILES += $${LINUX_HEADERS} $${LINUX_SOURCES}
}
