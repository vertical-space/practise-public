#!/bin/sh
#$ -N snakemake_memtest              
#$ -cwd                  
#$ -l h_rt=03:00:00 
#$ -l h_vmem=32G

# Initialise the environment modules
. /etc/profile.d/modules.sh
 
# Load Python
module load anaconda

# load virtal environment
source activate env3

# Run the program
snakemake --use-conda -s workflow.snk

