# Utils

function echo_green {
	echo -e "\e[32m$1\e[0m"
}

function install_deb {
	file_name="app.deb"

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

function install_from_tar_xz {
	file_name="archive.tar.xz"

	echo_green "Install $1"

	if [ -f $file_name ]
	then
		rm $file_name
	fi
	wget -O $file_name $2

	archive_directory="archive_directory"

	if [ -d $archive_directory ]
	then
		rm -rf $archive_directory
	fi

	mkdir "$archive_directory"
	mkdir "$archive_directory/$3"

	tar xvfJ $file_name --directory "$archive_directory/$3" --strip-components=1

	cp -R "$archive_directory/$3" "/opt/$3"

	rm $file_name
	rm -rf $archive_directory
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

# Telegram
install_from_tar_xz "Telegram" "https://updates.tdesktop.com/tlinux/tsetup.1.1.23.tar.xz" "telegram"
