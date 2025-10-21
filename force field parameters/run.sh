#!/bin/bash
#source /opt/intel/bin/compilervars.sh intel64
#source /public/software/env_scripts/intel_2015-env.sh
#source /public/software/env_scripts/cuda-8.0-env.sh
#source /public/software/env_scripts/openmpi-1.8.8-intel-env.sh
#source /public/software/amber18/amber.sh  
export CUDA_VISIBLE_DEVICES="3"
###CPU
#sander -O -i min1.in -p pep.top -c pep.crd -o  min1.out -r min1.rst -ref pep.crd < /dev/null
#sander -O -i min2.in -p pep.top -c min1.rst -o  min2.out -r min2.rst  < /dev/null
#sander -O -i md0.in  -p pep.top -c min2.rst -o  md0.out  -x md0.crd -r md0.rst -ref min2.rst < /dev/null
#sander -O -i md1.in  -p pep.top -c md0.rst  -o  md1.out  -r md1.rst -x md1.crd  < /dev/null
#sander -O -i md2.in  -p pep.top -c md1.rst  -o  md2.out  -r md2.rst -x md2.crd  < /dev/null
###CPU_MPI
#mpirun -np 2 sander.MPI -O -i min1.in -p pep.top -c pep.crd -o  min1.out -r min1.rst -ref pep.crd < /dev/null
#mpirun -np 8 sander.MPI -O -i min2.in -p pep.top -c min1.rst -o  min2.out -r min2.rst  < /dev/null
#mpirun -np 8 sander.MPI -O -i md0.in  -p pep.top -c min2.rst -o  md0.out  -x md0.crd -r md0.rst -ref min2.rst < /dev/null
#mpirun -np 8 sander.MPI -O -i md1.in  -p pep.top -c md0.rst  -o  md1.out  -r md1.rst -x md1.crd  < /dev/null
#mpirun -np 8 sander.MPI -O -i md2.in  -p pep.top -c md1.rst  -o  md2.out  -r md2.rst -x md2.crd  < /dev/null
###GPU
#pmemd.cuda -O -i min1.in -p pep.top -c pep.crd  -o  min1.out -r min1.rst -ref pep.crd < /dev/null
#pmemd.cuda -O -i min2.in -p pep.top -c min1.rst -o  min2.out -r min2.rst  < /dev/null
#pmemd.cuda -O -i md0.in  -p pep.top -c min2.rst -o  md0.out  -x md0.crd -r md0.rst -ref min2.rst < /dev/null
#pmemd.cuda -O -i md0-1.in  -p pep.top -c md0.rst   -o  md0-1.out  -x md0-1.crd -r md0-1.rst  < /dev/null
#pmemd.cuda -O -i md0-2.in  -p pep.top -c md0-1.rst -o  md0-2.out  -x md0-2.crd -r md0-2.rst < /dev/null
#pmemd.cuda -O -i md0-3.in  -p pep.top -c md0-2.rst -o  md0-3.out  -x md0-3.crd -r md0-3.rst < /dev/null
#pmemd.cuda -O -i md0-4.in  -p pep.top -c md0-3.rst -o  md0-4.out  -x md0-4.crd -r md0-4.rst < /dev/null
#pmemd.cuda -O -i md0-5.in  -p pep.top -c md0-4.rst -o  md0-5.out  -x md0-5.crd -r md0-5.rst < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md0.rst  -o  md1.out  -r md1.rst -x md1.crd  < /dev/null
pmemd.cuda -O -i md1.in  -p pep.top -c md1.rst  -o  md2.out  -r md2.rst -x md2.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md2.rst  -o  md3.out  -r md3.rst -x md3.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md3.rst  -o  md4.out  -r md4.rst -x md4.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md4.rst  -o  md5.out  -r md5.rst -x md5.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md5.rst  -o  md6.out  -r md6.rst -x md6.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md6.rst  -o  md7.out  -r md7.rst -x md7.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md7.rst  -o  md8.out  -r md8.rst -x md8.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md8.rst  -o  md9.out  -r md9.rst -x md9.crd  < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md9.rst  -o  md10.out -r md10.rst -x md10.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md10.rst  -o  md11.out -r md11.rst -x md11.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md11.rst  -o  md12.out -r md12.rst -x md12.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md12.rst  -o  md13.out -r md13.rst -x md13.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md13.rst  -o  md14.out -r md14.rst -x md14.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md14.rst  -o  md15.out -r md15.rst -x md15.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md15.rst  -o  md16.out -r md16.rst -x md16.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md16.rst  -o  md17.out -r md17.rst -x md17.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md17.rst  -o  md18.out -r md18.rst -x md18.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md18.rst  -o  md19.out -r md19.rst -x md19.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md19.rst  -o  md20.out -r md20.rst -x md20.crd < /dev/null
#pmemd.cuda -O -i md1.in  -p pep.top -c md20.rst  -o  md21.out -r md21.rst -x md21.crd < /dev/null
###nohup ./run.sh &
