#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -t 7-
#SBATCH --mem=5g
#SBATCH -n 1

module add r/3.5.0
R CMD BATCH --no-save mycode.R