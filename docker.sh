docker tag httpdimg:latest Revathijack/httpdimg
docker push Revathijack/httpdimg
docker run -itd --name con1 httpdimg
