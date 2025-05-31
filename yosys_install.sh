## Method-1
# Install dependencies
sudo apt-get update
sudo apt-get install -y build-essential clang bison flex libreadline-dev gawk tcl-dev libffi-dev git graphviz xdot pkg-config python3 python3-pip libboost-system-dev libboost-python-dev libboost-filesystem-dev zlib1g-dev

# Clone the latest Yosys source
git clone https://github.com/YosysHQ/yosys.git
cd yosys
git submodule update --init

# Build and install
make -j$(nproc)
sudo make install

## Method-2 
wget https://github.com/YosysHQ/oss-cad-suite-build/releases/download/2025-05-30/oss-cad-suite-linux-x64-20250530.tgz
tar -xzf oss-cad-suite-linux-x64-20250530.tgz
cd oss-cad-suite-linux-x64-20250530