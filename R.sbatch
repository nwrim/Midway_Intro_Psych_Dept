#!/bin/bash

#SBATCH --job-name=R
#SBATCH --output=R.out
#SBATCH --error=R.err
#SBATCH --account=pi-<PI CNET ID>
#SBATCH --partition=caslake
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1000
#SBATCH --time=00:20:00

module load R/4.3.1
Rscript R.R