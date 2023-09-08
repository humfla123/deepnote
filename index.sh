apt update -y
apt upgrade -y
apt install xfce4 xrdp curl sudo wget -y
service xrdp restart
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 25zOFhO9xHS6LJflCnRDtgrWFGl_23YL1E4RHatGeLtdXGh3M
echo "root:040112" | sudo chpasswd
service xrdp restart
echo Analizando finais... PRONTO!
sleep 10
ngrok tcp 3389 --region sa
