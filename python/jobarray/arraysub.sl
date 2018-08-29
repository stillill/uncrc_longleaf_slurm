#!/bin/bash

#SBATCH -p interact
##SBATCH -p general
#SBATCH -N 1
#SBATCH --mem=2
#SBATCH -n 1
#SBATCH -t 00:02:00
#SBATCH --array=1-5
#SBATCH --output=./logs/out.%J

module add python
python3 mycode.py $SLURM_ARRAY_TASK_ID
