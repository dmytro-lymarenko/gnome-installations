# Utils

function install_deb {
 	echo -e "\e[32mInstall $1\e[0m"
	rm "app.deb"
	wget -O "app.deb" $2
	sudo dpkg -i "app.deb"
	sudo apt install -f -y
}

################################################################################
# INSTALL PROGRAMS                                                             #
################################################################################

echo -e "\e[32mInstall programs\e[0m"

# Chrome
install_deb "Chrome" "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

# Atom
install_deb "Atom" "https://atom.io/download/deb"

# Slack
install_deb "Slack" "https://downloads.slack-edge.com/linux_releases/slack-desktop-2.7.1-amd64.deb"

# Skype
install_deb "Skype" "https://repo.skype.com/latest/skypeforlinux-64.deb"
