DF_REQS_DIR="$APPCFG_DIR/python-requirements"
VENV_DIR="$HOME/venv"
REQS_DIR="$VENV_DIR/requirements"
ENVS_DIR="$VENV_DIR/environments"

# Setup virtualenv directory
mkdir -p $REQS_DIR
mkdir -p $ENVS_DIR

# Include requirements sets, which groups packages based on use case
ln -sfv $DF_REQS_DIR/* $REQS_DIR
