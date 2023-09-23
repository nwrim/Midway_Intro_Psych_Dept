#!/bin/bash

# I hope I can get a job quickly

#SBATCH --job-name=matlab
#SBATCH --output=matlab.out
#SBATCH --error=matlab.err
#SBATCH --account=pi-<CNET ID>
#SBATCH --partition=caslake
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1000
#SBATCH --time=00:20:00

module load matlab/2023a
matlab -nodisplay -nosplash -nodesktop -r "run('./matlab.m');exit;"