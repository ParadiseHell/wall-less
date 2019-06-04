#!/bin/bash

#############################
# Global Variables
#
readonly CONFIG_FILE_PATH=$1
readonly DIGITAL_OCEAN_API_END_POINT="https://api.digitalocean.com"
readonly DIGITAL_OCEAN_CREATE_DROPLET="/v2/droplets"
readonly DIGITAL_OCEAN_DELETE_DROPLET="/v2/droplets/{DROPLET_ID}"
#############################

#########################
# Welcome and Introduce
# 
#########################
function welcome {
	echo "Welcome to wall-less~~"
	echo ""
	echo "Here are some wall-less featrues :"
	echo "1. Create ideal Digital Ocean Droplet"
	echo "2. Install Shadowsocks"
	echo "3. Install VPN"
	echo ""
}


###########################################
# Import digital ocean config file
#
# If CONFIG_FILE_PATH is exst import it
# else import default config file
#
###########################################
function import_digital_ocean_config_file {
	if test -z $CONFIG_FILE_PATH
	then
		source ./wall-less.config
	else
		source $CONFIG_FILE_PATH
	fi
}

##############################################
# Create an ideal digital ocean droptlet
# 
# Definition of ideal droplet:
# 1. minimum delay
#
##############################################

function create_ideal_digtital_ocean_droplet {
	local token=$DIGITAL_OCEAN_TOKEN
	local api=$DIGITAL_OCEAN_API_END_POINT
	local create=$DIGITAL_OCEAN_CREATE_DROPLET
	local delete=$DIGITAL_OCEAN_DELETE_DROPLET
}

####################
#
# The main function
#
####################
function main {
	welcome
	import_digital_ocean_config_file
	create_ideal_digtital_ocean_droplet
}

# execute main function
main
