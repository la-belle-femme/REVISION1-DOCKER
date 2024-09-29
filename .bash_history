sudo apt update && sudo apt upgrade -y
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker --version
sudo usermod -aG docker ubuntu
exit
groups
sudo -su ubuntu
groups
sudo su - ubuntu
groups
docker ps
mkdir flask_docker_app
cd flask_docker_app
sudo apt install python3-venv -y
python3 -m venv venv
source venv/bin/activate
pip install Flask
vim app.py
pip freeze > requirements.txt
groups
sudo su - ubuntu
vim Dockerfile
docker build -t flask-docker-app .
pwd
ls -la
pip freeze > requirements.txt
sudo apt install python3-pip
docker build -t flask-docker-app .
docker run -d -p 5000:5000 flask-docker-app
curl http://3.84.51.18:5000
docker run -d -p 5000:5000 flask-docker-app
curl http://3.84.51.18:5000
docker ps
docker ps -a
docker logs befbf363c5f8
ls -la
vim app.py
ls -la
cat Dockerfile
docker stop befbf363c5f8
docker stop 7592d35e399d
docker rm befbf363c5f8
docker rm 7592d35e399d
docker ps -a
docker build -t flask-docker-app .
docker images
docker rmi 4359da9244f2
docker images
docker run --rm flask-docker-app ls -la /app
docker ps -a
docker images
docker run -d -p 5000:5000 flask-docker-app
docker ps -a
docker logs 200393cd020e
cat requirements.txt
echo "Flask==2.0.1" > requirements.txt
cat requirements.txt
vim  Dockerfile
docker build -t flask-docker-app . --no-cache
docker images
docker rmi 7b4101452f85
docker ps -a
docker stop 200393cd020e
docker rm 200393cd020e
docker rmi 7b4101452f85
docker images
docker run -d -p 5000:5000 flask-docker-app
curl http://3.84.51.18:5000
curl http://172.31.95.13:5000
docker ps
docker ps -a
docker start $(docker ps -aq --filter ancestor=flask-docker-app --latest)
docker ps -a
docker logs $(docker ps -aq --filter ancestor=flask-docker-app --latest)
vim requirements.txt 
docker images
docker rmi ad855d8fb54e
#docker stop 200393cd020e
docker ps -a
docker stop a256c89f6340
docker rmi a256c89f6340
docker ps -a
docker stop gifted_ramanujan
docker rmi gifted_ramanujan
docker rm gifted_ramanujan
vim  Dockerfile
docker build -t flask-docker-app .
docker run -d -p 5000:5000 flask-docker-app
curl http://3.84.51.18:5000
docker run -d -p 5000:5000 flask-docker-app
curl http://172.31.95.13:5000
docker login
docker login -u bettysami
docker login
docker login -u bettysami
#docker tag flask-docker-app bettysami/flask-docker-app
docker tag flask-docker-app bettysami/flask-docker-app
docker push bettysami/flask-docker-app
sudo apt install docker-compose -y
vim docker-compose-flask.yaml
vim nginx.conf
docker-compose -f docker-compose-flask.yaml up -d
cat docker-compose-flask.yaml
vim docker-compose-flask.yaml
docker-compose -f docker-compose-flask.yaml up -d
docker-compose -f docker-compose-flask.yaml down
docker-compose -f docker-compose-flask.yaml up -d
docker-compose -f docker-compose-flask.yaml ps
git init
git add .
git commit -m "Initial commit with Docker and Flask setup"
git remote add origin https://github.com/la-belle-femme/REVISION-DOCKER.git
git pull origin main --allow-unrelated-histories
git add .
git commit -m "Merge remote changes and resolve conflicts"
git push -u origin main
git branch
git ls-remote --heads origin
git branch -m master main
git push -u origin master
git branch
git push -u origin main
git branch
git push -u origin main
git config --global credential.helper store
git push -u origin main
git fetch origin
git pull --rebase origin main
git rebase --continue
git push -u origin main --force
history
history > commands.txt
cat commands.txt 
ls commands.txt
vim commands.txt
history
vim commands1.txt
git add .
git commit -m "saved the history of commands used"
git push -u origin main 
git push -u origin main --force
git pull -u origin main --force
git pull -u origin main 
ls -ltr
cat app.py 
clear
cat > app.py << EOL
from flask import Flask
import socket
import datetime  # Added import for datetime

app = Flask(__name__)

@app.route('/')
def hello():
    hostname = socket.gethostname()
    current_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return f"Hello, Docker! I'm running on host: {hostname}. Current time: {current_time}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
EOL

vim app.py 
git add app.py
git commit -m "Updated app.py to include current time in the response"
docker-compose -f docker-compose-flask.yaml up -d --build
#curl http://3.84.51.18:5000
curl http://3.84.51.18:5000
docker-compose -f docker-compose-flask.yaml 
docker-compose -f docker-compose-flask.yaml down
docker-compose -f docker-compose-flask.yaml up -d --build
cat app.py
vim app.py
