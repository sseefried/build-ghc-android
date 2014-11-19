THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PASSWORD=adb
USER=androidbuilder
HOME=/home/$USER
SCRIPT=install-ghc-android.sh
INSTALL="install -o $USER -g $USER"

deluser $USER --remove-home
rm -rf $HOME
cat <<EOF | adduser $USER --gecos $USER
$PASSWORD
$PASSWORD
EOF

$INSTALL $THIS_DIR/$SCRIPT $HOME
su androidbuilder -lc "./$SCRIPT"
