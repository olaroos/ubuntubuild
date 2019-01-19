apt -y install vim 

apt-get -y install git 
apt-get -y install python3-pip

pip3 install --upgrade pip
pip3 install virtualenv

virtualenv ~/venv
source ~/venv/bin/activate 
pip3 install jupyter pandas matplotlib torch

# install CUDA 9.0 and CUDNN 7.0 
# https://medium.com/@zhanwenchen/install-cuda-and-cudnn-for-tensorflow-gpu-on-ubuntu-79306e4ac04e

bash cuda.sh

read -rsp $'add :/usr/local/cuda/bin to /etc/environment and then press a key to continuer...\n' -n1 key

rm cuda.linux.9.0.176-22781540.run 
rm cuda-samples.9.0.176-22781540-linux.run 
rm NVIDIA-Linux-x86_64-384.81.run 

# go to cuDNN download page, download 3 .deb files for cuDNN 7.0* for CUDA 9.
0
# sudo dpkg -i libcudnn7_7.0.5.15–1+cuda9.0_amd64.deb 
# sudo dpkg -i libcudnn7-dev_7.0.5.15–1+cuda9.0_amd64.deb 
# sudo dpkg -i libcudnn7-doc_7.0.5.15–1+cuda9.0_amd64.deb
# rm libcudnn7_7.0.5.15–1+cuda9.0_amd64.deb 
# rm libcudnn7-dev_7.0.5.15–1+cuda9.0_amd64.deb 
# rm libcudnn7-doc_7.0.5.15–1+cuda9.0_amd64.deb

# if you have an old processor, install tensorflow version 1.5 
pip3 install tensorflow==1.5.0
pip3 install --upgrade tensorflow-gpu==1.5.0  
