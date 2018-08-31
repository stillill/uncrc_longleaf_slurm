#!/bin/bash

#SBATCH -p general
#SBATCH -N 1
#SBATCH -t 07-00:00:00
#SBATCH --mem=10g
#SBATCH -n 1

module add stata
stata-se -b do mycode.do