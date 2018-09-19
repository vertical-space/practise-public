
# to run this:

git clone https://github.com/vertical-space/practise-public.git

cd practise-public

git clone https://github.com/secastel/allelecounter.git

snakemake --cluster-config cluster.json --jobscript custombash.sh --use-conda --cluster "qsub -cwd -pe sharedmem {cluster.core} -l h_rt={cluster.time} -l h_vmem={cluster.vmem}" --jobs 1000 -s workflow.snk

edit the rule "all" to specify a new accession number, then relaunch as above.

