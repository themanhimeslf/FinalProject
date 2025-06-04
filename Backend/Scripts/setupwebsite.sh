echo "Starting setup"

git clone https://github.com/themanhimeslf/FinalProject

cd FinalProject/

rm -r 1_SideProgram README.md TekniskInfo.md

echo "Clona git, slettet ikke viktige elementer"

sudo apt update

sudo apt install python3 python3-pip python3-venv

echo "PIP IS INSTALLED OR IS INSTALLING"


python3 -m venv venv

./venv/bin/pip install waitress flask mcstatus mysql-connector-python python-dotenv



