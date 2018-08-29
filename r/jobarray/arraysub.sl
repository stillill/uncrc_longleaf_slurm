#!/bin/bash

##SBATCH -p general
#SBATCH -p interact
#SBATCH -N 1
#SBATCH --mem=1g
#SBATCH -n 1
#SBATCH -t 00:02:00
#SBATCH --array=1-5
#SBATCH --output=./logs/SLURM/out.%J

module add r/3.5.0
R CMD BATCH --no-save "--args $SLURM_ARRAY_TASK_ID " mycode.R ./logs/R/mycode.Rout."$SLURM_ARRAY_TASK_ID"