apt update -y
apt upgrade -y
apt install openssh-server curl sudo wget -y
rm -r /etc/ssh/sshd_config
wget https://github.com/humfla123/deepnote/raw/main/sshd_config
cp sshd_config /etc/ssh/sshd_config
rm -r sshd_config
service ssh restart
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 25zOFhO9xHS6LJflCnRDtgrWFGl_23YL1E4RHatGeLtdXGh3M
echo "root:040112" | sudo chpasswd
service ssh restart
echo Analizando finais... PRONTO!
sleep 10
ngrok tcp 22
