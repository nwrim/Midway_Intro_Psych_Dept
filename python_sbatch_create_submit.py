import argparse
import subprocess
from time import sleep

args = argparse.ArgumentParser()
args.add_argument("start_idx", type=int)
args.add_argument("end_idx", type=int)

args = args.parse_args()
start_idx = args.start_idx
end_idx = args.end_idx

for i in range(start_idx, end_idx + 1):
    s = f"""#!/bin/bash

#SBATCH --job-name=python_{i}
#SBATCH --output=python_sbatch_outputs/python_{i}.out
#SBATCH --error=python_sbatch_outputs/python_{i}.err
#SBATCH --account=pi-bermanm
#SBATCH --partition=caslake
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1000
#SBATCH --time=00:20:00

module load python/anaconda-2022.05

python python_input.py {i}
"""
    with open('tmp.sbatch', 'w') as f:
        f.write(s)
    e = subprocess.run(['sbatch', 'tmp.sbatch'])
    e = subprocess.run(['rm', 'tmp.sbatch'])
    sleep(1)
