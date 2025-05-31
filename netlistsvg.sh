# To convert json file to SVG using netlistsvg
# netlistsvg file.json -o output.svg
sudo apt update
sudo apt install nodejs npm
git clone https://github.com/nturley/netlistsvg
cd netlistsvg
npm install --legacy-peer-deps
sudo npm install -g .