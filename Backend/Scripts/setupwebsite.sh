echo "Starting setup"

git clone https://github.com/themanhimeslf/FinalProject

cd FinalProject/

rm -r 1_SideProgram README.md Tekniskinfo.md

echo "Clona git, slettet ikke viktige elementer"

sudo apt update

sudo apt install python3 python3-pip python3-venv

python3 -m venv venv
source venv/bin/activate

pip install waitress

pip install flask

pip install mcstatus

pip install mysql-connector-python

pip install dotenv

echo "Installert python, og relevante packages"

sudo ./venv/bin/python3 FlaskAPP.py

echo "Starter flask"

