sudo docker build -t ml0 . -f Dockerfile.jetsonagx
sudo docker run -it --rm --runtime nvidia --network host -v `pwd`:/myworkdir ml0
