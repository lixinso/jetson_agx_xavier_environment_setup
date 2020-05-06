#https://forums.developer.nvidia.com/t/instll-python-packages-librosa-and-llvm-on-jetson-nano-developer-kit-problem/74543/5

wget http://releases.llvm.org/7.0.1/llvm-7.0.1.src.tar.xz
tar -xvf llvm-7.0.1.src.tar.xz
cd llvm-7.0.1.src
mkdir -p llvm_build_dir
cd llvm_build_dir/
cmake ../ -DCMAKE_BUILD_TYPE=Release                     -DLLVM_TARGETS_TO_BUILD="ARM;X86;AArch64"
make -j4 
cd bin/
echo "export LLVM_CONFIG=\""`pwd`"/llvm-config\"" >> ~/.bashrc
echo "alias llvm='"`pwd`"/llvm-lit'" >> ~/.bashrc

LLVM_CONFIG="/myworkdir/llvm-7.0.1.src/llvm_build_dir/bin/llvm-config" pip3 install llvmlite

