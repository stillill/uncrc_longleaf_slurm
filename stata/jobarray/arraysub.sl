#!/bin/bash

#SBATCH -p interact
##SBATCH -p general
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH --mem=1g
#SBATCH --array=1-5
#SBATCH --output=./logs/out.%J

sh submitstata.sh $PWD $SLURM_ARRAY_TASK_ID
