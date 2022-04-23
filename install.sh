#!/bin/bash
install_lib (){
REQUIRED_PKG="$1"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "Отсутствует пакет: $REQUIRED_PKG. Установка $REQUIRED_PKG."
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
pip3 install -U scipy
pip3 install pyaudio==0.2.11
pip3 install webrtcvad==2.0.10
pip3 install halo==0.0.18
pip3 install numpy==1.15.1
pip3 install scipy==1.1.0
wget https://coqui.gateway.scarf.sh/russian/jemeyer/v0.1.0/wiki-ru-6gram.scorer
unzip model.zip
