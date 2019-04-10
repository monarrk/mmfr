NAME=$1

if [[ -z "$NAME" ]]; then
    echo "Please input a file to find!"
    exit 1
fi

PKG_WITH_NAME=$( grep -F "$1" packages.sh )
PKGarr=(${PKG_WITH_NAME//=/ })
PKG=${PKGarr[1]}
echo "$PKG"


