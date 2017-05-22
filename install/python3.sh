# Install pip
install-package python3
install-package python3-dev
sudo easy_install3 -U pip

# Set up general packages
DF_REQS_DIR="$INSTALL_DIR/python-requirements"
sudo pip3 install -U -r $DF_REQS_DIR/general.txt
