################################################################################
# INSTALL PROGRAMS                                                             #
################################################################################

echo -e "\e[32mInstall programs\e[0m"

# Chrome
echo -e "\e[32mInstall Chrome\e[0m"

rm google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y
rm google-chrome-stable_current_amd64.deb

# Atom
echo -e "\e[32mInstall Atom\e[0m"

rm atom.deb
wget -O atom.deb https://atom.io/download/deb
sudo dpkg -i atom.deb
sudo apt install -f -y
rm atom.deb
