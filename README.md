# bing_wallpaper

TODO : libssl 0.98 requis.

Copy bing_wallpaper.priv.pri.sample to bing_wallpaper.priv.pri
and fill the correct values in order to be able to compile the program.

Needed for building the app:
* Qt >= 5.9.1
* Doxygen, required for generating code documentation.
* Python 3, required for some Makefile extra targets.

Targeted compilers:
* MSVC 2017 on Windows.
* g++ on Linux

It uses qmake for generating makefile.

Makefile extra targets :
* gendoc: generating documentation with Doxygen.
* cleandoc: removing doc generating the gendoc rule.
