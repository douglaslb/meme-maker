

rm -rf dependencies
mkdir -p dependencies

docker run --rm \
        -v "$PWD"/dependencies:/lambda/opt \
        lambci/yumda:2 yum install -y git GraphicsMagick

cd dependencies
sudo zip -yr ../dependencies .
cd ..




