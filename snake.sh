#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -N snakemake_memtest              
#$ -cwd                  
#$ -l h_rt=00:30:00 
#$ -l h_vmem=32G

# Initialise the environment modules
. /etc/profile.d/modules.sh
 
# Load Python
module load anaconda

# load virtal environment
source activate ase
 
# Run the program
snakemake -s rules.snk

