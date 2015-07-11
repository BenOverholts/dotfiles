# Setup for Linux environment
# TODO this script could probably be way more leet

# Check privilege (heh)
if [[ "id -u" -ne 0 ]]
	then echo "Please run as root"
	exit
fi

# Install zsh if it isn't already
if [[ "$SHELL" != *"zsh"* ]]
	# If not installed
		# apt-get install zsh

	# chsh -s $(which zsh)

	# Configure to skip the setup script
	echo " [INSTALL] zsh install complete"
fi
