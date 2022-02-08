#####################################################
# Source code https://github.com/end222/pacmenu
# Updated by Afiniel for crypto use...
#####################################################

source /etc/functions.sh

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "Afiniel Yiimp installer" --menu "Choose one" -1 60 16 \
' ' "- YiiMP installer -" \
1 "YiiMP" \
' ' "- Upgrade Yiimp -" \
2 "YiiMP Stratum Upgrade" \
' ' "- Daemon Wallet Builder -" \
3 "Daemonbuilder" \
4 Exit)
if [ $RESULT = ]
then
bash $(basename $0) && exit;
fi

# Single install
if [ $RESULT = 1 ]
then
clear;
cd $HOME/multipool/install
source bootstrap_single.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $HOME/multipool/install
source bootstrap_upgrade.sh;
fi

if [ $RESULT = 3 ]
then
clear;
cd $HOME/multipool/install
source bootstrap_coin.sh;
fi

if [ $RESULT = 4 ]
then
clear;
exit;
fi
