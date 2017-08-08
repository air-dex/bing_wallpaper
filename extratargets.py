#!/usr/bin/env python
# -*- coding: utf-8 -*-

import shutil
import os
import os.path as ospath
from sys import argv as argz

# Project paths

# Project root (also where the script is)
projectpath = os.getcwd()

# Binaries
binpath = ospath.join(projectpath, "bin")

# Documentation
docpath = ospath.join(projectpath, "doc")

# Translations
trpath = ospath.join(projectpath, "i18n")

#----------------#
# Tool functions #
#----------------#

# TODO (if necessary)

#--------------------#
# Actions to realize #
#--------------------#

def cleanDoc():
	"""Cleaning generated documentation"""
	shutil.rmtree(ospath.join(docpath, "html"), ignore_errors=True)
# End cleandoc()

actionz = {
	"cleanDoc": cleanDoc
}

# TODO

#------#
# Main #
#------#

def main():
	"""Main"""
	argc = len(argz)
	
	if argc < 2 :
		print("Usage : [python3] extratargetscripts.py action arg1 [arg2 ... argN]")
		return
		
	action = argz[1]
	
	if action in actionz.keys():
		actionz[action](*argz[2:])
	else:
		print("Unknown action for '{0}'. Available actions are : {1}.".format(action, ", ".join(actionz.keys())))
# End main()

if __name__ == '__main__':
	main()
