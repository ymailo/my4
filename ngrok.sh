echo "======================="
echo "Download ngrok"
echo "======================="
rm -rf ngrok ngrok.zip ngrok.sh > /dev/null 2>&1
wget -O ng.sh https://raw.githubusercontent.com/ymailo/my4/refs/heads/main/upngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (New England)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3389 &>/dev/null &
echo "======================="
clear
echo "================================"
echo "Wait Downloading file 3-4 minutes"
echo "More free vps visit 👉akuh.net👈"
echo "================================"
sudo apt-get install lxde > /dev/null 2>&1
echo "===========40%"
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
echo "===============60%"
echo "==============="
echo "Install Brave"
echo "==============="
sudo apt install apt-transport-https curl > /dev/null 2>&1
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install brave-browser > /dev/null 2>&1
echo "===================80%"
sudo service xrdp start > /dev/null 2>&1
echo "=======================100%"
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:22/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Don't close tab colab to keep rdp running 12 hours"
echo "👉Keep support akuh.net thank you👈"
echo "===================================="
sleep 9876543210
