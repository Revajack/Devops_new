docker build -t httpdimg:latest .
docker login -u revathijack -p dckr_pat_8ZosCCradb8QAEEy84WGXQYTDBk
docker tag httpdimg:latest Revathijack/httpdimg
docker push Revathijack/httpdimg
docker run -itd --name con1 httpdimg
