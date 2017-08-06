#include "systemmanagerbuilder.hpp"

#ifdef Q_OS_WIN
	#include "windows/windowsmanager.hpp"
#elif defined(Q_OS_LINUX)
	// TODO
	#include "./linux/linuxwm.hpp"
#endif

SystemManagerBuilder::SystemManagerBuilder() {}

SystemManager * SystemManagerBuilder::getSystemManager()
{
	#ifdef Q_OS_WIN
		return new WindowsManager();
	#endif
}
