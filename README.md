# learn-digdag

digdag学習用


```shell script
cd environment 


docker-compose up --build -d
```




```shell

docker pull centos

docker run -d -it --name centos76 centos


docker ps
# docker exec -it [container_id] bash
docker exec -it b00fb303f398 bash

yum -y update

curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest"


chmod +x /usr/local/bin/digdag



yum -y install java-1.8.0-openjdk-devel.x86_64

y

y

java -version

digdag --help

digdag init ttdag

cd ttdag

digdag run ttdag.dig

cat ttdag.dig

vim ttdaag.dig

```


# 2回目以降
digdag run ttdag.dig --session "`date '+%Y-%m-01'`"