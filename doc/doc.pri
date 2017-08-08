# Documentation stuff

DOC_FILES = \
	doc/Doxyfile.txt \
	doc/html/index.html

DISTFILES += $${DOC_FILES}

# Documentation extra targets

# DOC_FOLDER : root folder for documentation
DOC_FOLDER = $$shell_path($${PROJECT_ROOT}doc/)

# Generate documentation
# God knows why, jom.exe cannot execute the command if the rule is called "doc"
gendoc.name = gendoc
gendoc.commands = $${DOXYGEN_CMD} $${DOC_FOLDER}Doxyfile.txt

# Clean documentation
cleandoc.name = cleandoc
cleandoc.commands = $${PYTHON_SCRIPT_CMD} cleanDoc

QMAKE_EXTRA_TARGETS += gendoc cleandoc
