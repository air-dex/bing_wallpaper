# Extra makefile targets

# NOTE: see reyn-tests on Github for examples

PYTHON_SCRIPT_CMD = $${PYTHON3_CMD} $$system_path($${PWD}/extratargets.py)
PROJECT_ROOT = $$shell_path($${PWD}/)

# Proper build clean (i.e. do not erase .gitkeep files)
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
