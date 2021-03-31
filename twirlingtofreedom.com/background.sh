echo "background start" >> .backgroundstatus
echo "1.) updating from apt.releases.hashicorp..." >> .backgroundstatus
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - >> .backgroundstatus
echo "2.) apt-add-respository..." >> .backgroundstatus
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" >> .backgroundstatus
echo "3.) apt-get..." >> .backgroundstatus
sudo apt-get update && sudo apt-get install terraform >> .backgroundstatus
echo "background done" >> .backgroundstatus