sudo dnf update -y
sudo dnf install python3 python3-pip git mariadb105 -y
python3 -m venv venv
source venv/bin/activate
pip install flask pymysql gunicorn
gunicorn --bind 0.0.0.0:5000 sistema_de_control_de_cubetas:app --workers 3