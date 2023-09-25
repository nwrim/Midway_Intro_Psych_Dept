#!/bin/bash

#SBATCH --job-name=python_input
#SBATCH --output=python_input_from_text.out
#SBATCH --error=python_input_from_text.err
#SBATCH --account=pi-<PI CNET ID>
#SBATCH --time=00:20:00
#SBATCH --partition=caslake
#SBATCH --ntasks=10 # number of cores to use
#SBATCH --mem-per-cpu=1GB # Do NOT use --mem option

# Load the default version of GNU parallel.
module load slurm
module load parallel

module load python/anaconda-2022.05

ulimit -u 10000 # When running a large number of tasks simultaneously, it may be necessary to increase the user process limit.

srun="srun --exclusive -N1 -n1" # this is option for srun - “-N1 -n1” is to allocate a single core to each task

parallel="parallel --delay 0.2 -j $SLURM_NTASKS --joblog python_input_from_text.log --resume"

$parallel "$srun python python_input.py {1}" :::: $ScriptDir./python_input.txt
