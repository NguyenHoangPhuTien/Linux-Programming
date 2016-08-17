#!/bin/bash

# Very simple example shell script for managing a CD collection.
# under the terms of the GNU General Public License as published by the
# free software foundation; either version 2 of the License, or (at your option) any later version.
# This program is distributed in the hopes that it will be useful, but 
# Without any warranty; Without even the implied warranty of
# merchantability or fitness for a particular purpose . see the GNU General
# Public License for more details

# The first thing to do is to ensure that some global variables that we'll be using
# Throughout the script are set up. We set the tilte and track files and a temporary file.
# We also trap Ctrl-C, so our temporary file is removed if the user interrupts the script.

menu_choice=""
current_cd=""
tilte_file="tilte.cdb"
tracks_file="tracks.cdb"
temp_file=/tmp/cdb.$$
trap 'rpm -f $temp_file' EXIT

# Now we define our functions, so that the script, executing form the top line, can find
# all the function definations before we attempt to call any of them for the first time.
# to avoid rewriting the same code in several places, the first two functions are simple
# utilities

get_return() {

	echo -e "Press return \c"
	read x
	return 0
}

get_confirm() {

	echo -e "Are you sure? \c"
	while true
	do
		read x
		case "${x,,}" in
			y | yes )
				return 0
				;;
			n | no )
				echo 
				echo "Cancelled"
				return 1
				;;
			* )
				echo "Please enter yes or no"
				;;
		esac
	done	
}