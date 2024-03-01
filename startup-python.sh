sudo apt update
sudo apt install python3-pip nginx git python3-venv ufw -y
python3 -m venv venv
source venv/bin/activate
echo 'server {
         listen 80;
         location / {
                proxy_pass http://127.0.0.1:8000;
                proxy_set_header Host $host;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
         }
 }' | sudo tee /etc/nginx/sites-enabled/flask_app > /dev/null
sudo unlink /etc/nginx/sites-enabled/default
sudo nginx -s reload
git clone https://github.com/Maza-Alain/urlmap-crud-python.git
cd urlmap-crud-python
pip install -r requirements.txt
gunicorn --workers=3 app:app --daemon