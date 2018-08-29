#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -t 02:00:00
#SBATCH --mem=3g
#SBATCH -n 1
#SBATCH --cpus-per-task 24

module add r/3.5.0
R CMD BATCH --no-save mycode.R
