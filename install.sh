PREFIX=${PREFIX:-/usr/local}

usage () {
echo """
--prefix <path> --prefix /cool/path
                Don't --prefix=/cool/path
"""
}

_setArgs(){
  while [ "$1" != "" ]; do
    case $1 in
      "--prefix")
        shift
        PREFIX=$1
        ;;
      "-h" | "--help")
        usage
        ;;
    esac
    shift
  done
}

_setArgs $*
echo install $PREFIX/bin

echo "~/.gitconfig -> ~/.gitconfig.tmp"
mv ~/.gitconfig ~/.gitconfig.tmp
make install prefix=$PREFIX
cp -a target/release/julia-pkg $PREFIX/bin/ 
mv ~/.gitconfig.tmp ~/.gitconfig
echo "~/.gitconfig.tmp -> ~/.gitconfig"
