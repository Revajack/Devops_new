docker build -t httpdimg Dockerfile ./
docker login -u revathijack -p Revajack@123456
docker tag httpdimg:latest Revajack/httpdimg
docker push Revajack/httpdimg
docker run -itd --name con1 httpdimg
