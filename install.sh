#!/bin/bash
install_lib (){
REQUIRED_PKG="$1"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi
}
install_lib sox
install_lib portaudio19-dev
install_lib arduino
install_lib arduino-core
pip3 install pyaudio
pip3 install STT-1.0.0-cp36-cp36m-linux_aarch64.whl --user
pip3 install coqui_stt_ctcdecoder-1.0.0-cp36-cp36m-linux_aarch64.whl --user
pip3 install pyserial
