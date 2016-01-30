#!/usr/bin/env bash

# This script will setup an environment to work with TYPO3 Sphinx
# documentation.
# Author: Daniel Siepmann <coding@daniel-siepmann.de>

# Further information can be found at:
# http://mbless.de/blog/2015/01/26/sphinx-doc-installation-steps.html

# Check requirements
hash python 2>/dev/null || { 
    echo "Please install Python first."
    exit 1
}
hash pip 2>/dev/null || { 
    echo "Installing pip:"
    pipFile="get-pip.py"
    wget "https://bootstrap.pypa.io/$pipFile"
    echo "Python will ask for your password, as we install pip using python with sudo"
    sudo python "$pipFile"
    rm "$pipFile"
}

echo "Install / upgrade pip packages"
echo "Python will ask for your password, as we run pip with sudo"
sudo pip install --upgrade sphinx
sudo pip install --upgrade pyyaml
sudo pip install --upgrade Pillow
# TYPO3 Specific
sudo pip install --upgrade t3SphinxThemeRtd
sudo pip install --upgrade t3fieldlisttable
sudo pip install --upgrade t3tablerows
sudo pip install --upgrade t3targets

echo "Everything is up to date, you can start working on TYPO3 documentation now"
