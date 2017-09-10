# Utils

function echo_green {
	echo -e "\e[32m$1\e[0m"
}

function install_deb {
	file_name = "app.deb"

	echo_green "Install $1"

	if [ -f $file_name ]
	then
		rm $file_name
	fi
	wget -O $file_name $2
	sudo dpkg -i $file_name
	sudo apt install -f -y

	rm $file_name
}

################################################################################
# INSTALL PROGRAMS                                                             #
################################################################################

echo_green "Install programs"

# Chrome
install_deb "Chrome" "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

# Atom
install_deb "Atom" "https://atom.io/download/deb"

# Slack
install_deb "Slack" "https://downloads.slack-edge.com/linux_releases/slack-desktop-2.7.1-amd64.deb"

# Skype
install_deb "Skype" "https://repo.skype.com/latest/skypeforlinux-64.deb"
