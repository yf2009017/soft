#/bin/sh
git config --global user.email "yangfeiy_f@126.com"            
git config --global user.name "yf2009017"

MPIDIR=$HOME/mpich
WGET=$HOME/wget
if [ -e $MPIDIR ]; then
    rm -rf $MPIDIR
fi

if [ -e $WGET ]; then
    rm -rf $WGET
fi

tar -jxvf mpich.tar.bz -C $HOME
tar -zxvf wget.tar.gz -C $HOME

> /etc/environment  #  clear the file contents
echo PATH=$MPIDIR/bin:$WGET/bin:$PATH >>/etc/environment
echo LD_LIBRARY_PATH=$MPIDIR/lib:$LD_LIBRARY_PATH >> /etc/environment
source /etc/environment
chmod +x $MPIDIR/bin/*
chmod +x $WGET/bin/*
## test mpi
mpicc hello_mpi.c -o Test
mpirun -np 4 ./Test