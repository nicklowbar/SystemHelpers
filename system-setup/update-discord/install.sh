sudo cp -r ./etc/* /etc
sudo cp -r ./usr/* /usr

sudo systemctl daemon-reload
sudo systemctl enable update-discord.service
sudo systemctl start update-discord.service
