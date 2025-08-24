sudo rm /etc/systemd/system/update-discord.service
sudo rm /usr/bin/update-discord

sudo systemctl stop update-discord.service
sudo systemctl disable update-discord.service
