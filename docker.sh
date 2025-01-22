docker tag httpdimg:latest revathijack/httpdimg
docker push revathijack/httpdimg
docker run -itd --name con1 httpdimg
