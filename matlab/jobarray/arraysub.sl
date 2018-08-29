#!/bin/bash

#SBATCH -p interact
##SBATCH -p general
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 8
#SBATCH --mem=1g
#SBATCH --array=1-5
#SBATCH --output=./logs/out.%J

module add matlab
matlab -nodesktop -nosplash -singleCompThread -r 'mycode('$SLURM_ARRAY_TASK_ID')'
