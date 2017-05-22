# Install pip
install-package python
install-package python-dev
install-package python-pip

# Set up general packages
DF_REQS_DIR="$INSTALL_DIR/python-requirements"
sudo pip2 install -U -r $DF_REQS_DIR/general.txt
