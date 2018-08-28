#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH --mem=2
#SBATCH -n 1
#SBATCH -t 00:02:00
#SBATCH --array=1-3

module add python
python3 myscript.py $SLURM_ARRAY_TASK_ID
