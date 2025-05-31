# Dependency
sudo apt-get update
sudo apt-get install -y libxext6
sudo apt-get install -y libxft2 libxrender1 libxt6
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y libxext6:i386 libxft2:i386 libxrender1:i386 libxt6:i386 libc6:i386
# Download and install ModelSim
wget https://downloads.intel.com/akdlm/software/acdsinst/20.1std.1/720/ib_installers/ModelSimSetup-20.1.1.720-linux.run
chmod +x ModelSimSetup-20.1.1.720-linux
./ModelSimSetup-20.1.1.720-linux.run --mode text

set this

   export PATH=/home/codespace/intelFPGA/20.1/modelsim_ase/bin:$PATH

   source it later