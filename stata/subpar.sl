#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -t 02:00:00
#SBATCH --mem=3g
#SBATCH -n 1
#SBATCH --cpus-per-task 8

module add stata
stata-mp -b do mycode.do