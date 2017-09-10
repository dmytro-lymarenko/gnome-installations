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
install_deb "Atom" "atom.deb https://atom.io/download/deb"
