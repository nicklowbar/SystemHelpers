# note: This script is intended to be used whenever opening discord results in the client attempting to download an update .deb.
# It would be better if we could check for updates on a schedule, but that requires some way to query Discord's API.
# This script will attempt to download the latest version of the client and install it.

wget "https://discord.com/api/download/stable?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
rm discord.deb