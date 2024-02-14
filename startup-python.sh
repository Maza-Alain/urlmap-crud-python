sudo apt update
sudo apt install python3-pip nginx git python3-gunicorn python3-flask-y
# pip3 install flask
# pip install gunicorn
git clone https://github.com/Maza-Alain/urlmap-crud-python.git
cd urlmap-crud-python
pip install
gunicorn --workers=3 app:app 
