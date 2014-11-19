cd
echo 'export PATH=$HOME/bin:$PATH' >> $HOME/.bashrc
rm -rf .ghc .cabal
cabal update
cabal install happy alex --bindir=$HOME/bin
PATH=$HOME/bin:$PATH
export PATH
git clone https://github.com/sseefried/ghc-android
cd ghc-android
git checkout stable-ghc-snapshot
./build

echo
echo
echo "BUILD COMPLETE!"
echo ""
