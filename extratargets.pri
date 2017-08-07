# Extra makefile targets

# TODO : see reyn-tests on Github for examples

PYTHON_SCRIPT_CMD = $${PYTHON3_EXEC} $$system_path($${PWD}/extratargetscripts.py)

# Proper build clean (i.e. do not erase .gitkeep files)
# TODO

# Generate documentation
# TODO

# Clean documentation
# TODO

# I18n lupdate
# TODO

# I18n lrealese
# TODO

# I18n deploy
# TODO

# I18n clean
# TODO

DISTFILES += \
	extratargets.py
