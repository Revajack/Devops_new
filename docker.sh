docker build -t httpdimg:latest .
docker login -u revathijack -p Revajack@123456
docker tag httpdimg:latest Revathijack/httpdimg
docker push Revathijack/httpdimg
docker run -itd --name con1 httpdimg
