#/bin/sh
tar -jxvf mpich.tar.bz
tar -zxvf wget.tar.gz
MPIDIR=$HOME/soft/mpich
WGET=$HOME/soft/wget
echo PATH=$MPIDIR/bin:$WGET/bin:$PATH >>/etc/environment
echo LD_LIBRARY_PATH=$MPIDIR/lib:$LD_LIBRARY_PATH >> /etc/environment

source /etc/environment
chmod +x $MPIDIR/bin/*
chmod +x $WGET/bin/*
## test wget
mpicc hello_mpi.c -o Test -I$MPIDIR/include -L$MPIDIR/lib -lmpi
mpirun -np 4 ./Test
