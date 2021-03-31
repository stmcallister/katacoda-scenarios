echo "background start" >> .backgroundstatus
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - >> .backgroundstatus
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" >> .backgroundstatus
sudo apt-get update && sudo apt-get install terraform >> .backgroundstatus
echo "background done" >> .backgroundstatus