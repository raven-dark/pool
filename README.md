# ravne dark pool

spin up new ubuntu 16 ec2 instance

install docker

`sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common git && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && sudo apt-get update && sudo apt-get install -y docker-ce`

pull repo

`git clone https://github.com/raven-dark/pool.git`

build container

`cd pool`

`sudo docker build -t pool/xrd .`

run pool container

`sudo docker run -p 80:8080 -p 6666:6666 -p 3030:3030 -v ~/data:/root/.ravendarkcore -d --name xrd pool/xrd:latest`

to get into container, if needed

`sudo docker exec -it xrd /bin/bash`
