 rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "======================="
echo "Download ngrok"
echo "======================="
wget -O ngrok.zip https://www.dropbox.com/scl/fi/dfl1nuit2sayb3djbp0g3/ngrok-stable-linux-amd64.zip?rlkey=vmj1umbx1oo4ev8f3gt2j6a8b&st=4pqx8x7n&dl=0 > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
read -p "Paste Ngrok Authtoken: " CRP
./ngrok authtoken $CRP
