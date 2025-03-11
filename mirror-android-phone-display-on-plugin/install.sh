# installing mirror android phone display on plugin
echo "installing \"Mirror Android Phone Display on Plugin\""

#get the folder that this script resides in
script_folder=$(dirname $(readlink -f $0))
#echo "Script folder is: $script_folder"

#exit 1

echo "Installing the udev rules file: \"$script_folder/10-mirror-android-phone-display.rules\" to /etc/udev/rules.d/"
sudo cp ${script_folder}/10-mirror-android-phone-display.rules /etc/udev/rules.d/

echo "Installing the systemd service file: \"$script_folder/mirror-android-phone-display.service\" to /lib/systemd/user/"
sudo cp ${script_folder}/mirror-android-phone-display.service /lib/systemd/user/

echo "Installing the mirror phone script: \"$script_folder/mirror-android-phone-display.sh\" to /usr/local/bin/"
sudo cp ${script_folder}/mirror-android-phone-display.sh /usr/local/bin/

# reload the systemd daemon
echo "Restarting the systemd daemon"
sudo systemctl daemon-reload

# restart the udev daemon
echo "Restarting the udev daemon..."
sudo systemctl restart udev

