sudo apt-get install nvidida-384 nvidia-modprobe

cd ~/Downloads
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run

chmod +x cuda_9.0.176_384.81_linux-run
./cuda_9.0.176_384.81_linux-run --extract=$HOME

cd $HOME
./cuda-linux.9.0.176-22781540.run

./cuda-samples.9.0.176-22781540-linux.run

bash -c "echo /usr/local/cuda/lib64/ > /etc/ld.so.conf.d/cuda.conf"
ldconfig
