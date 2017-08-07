#!/usr/bin/env python
# -*- coding: utf-8 -*-

from sys import argv as argz

#------#
# Main #
#------#

actionz = {
}

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
