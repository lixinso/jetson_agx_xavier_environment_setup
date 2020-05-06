sudo docker build -t ml . -f Dockerfile.jetsonagx
sudo docker run -it --rm --runtime nvidia --network host -v `pwd`:/myworkdir ml
