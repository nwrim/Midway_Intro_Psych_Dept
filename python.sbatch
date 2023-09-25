#!/bin/bash

#SBATCH --job-name=python
#SBATCH --output=python.out
#SBATCH --error=python.err
#SBATCH --account=pi-<PI CNET ID>
#SBATCH --partition=caslake
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1000
#SBATCH --time=00:20:00

module load python/anaconda-2022.05
source activate pytorch

python python.py