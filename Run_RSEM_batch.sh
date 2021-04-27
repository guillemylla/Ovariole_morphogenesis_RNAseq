#!/bin/bash
#SBATCH -n 20                # Number of cores (-n)
#SBATCH -N 1                # Ensure that all cores are on one Node (-N)
#SBATCH -t 7-00:00          # Runtime in D-HH:MM, minimum of 10 minutes
#SBATCH -p shared   # Partition to submit to
#SBATCH --mem=10gb           # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH -o Map_out_%j.out  # File to which STDOUT will be written, %j inserts jobid
#SBATCH -e Map_err_%j.err  # File to which STDERR will be written, %j inserts jobid
#SBATCH --mail-type=ALL          # Mail events (NONE, BEGIN, END, FAIL, ALL)


indexname="Dmel6.36RSEM"
outputpath="rsem_output_v2"
counter=0
for fastqfile  in  $(find RAW_Data -type f -name '*.fastq.gz'| grep -v -i "Undetermined")
do
    ((counter+=1))

    printf "\n"


    prefname=$(basename $fastqfile)
    fname=`echo $prefname | sed 's/.fastq.gz//'`

      ## Check if bam alreay in outputs (previously ran)
	FILE=$outputpath/$fname.STAR.genome.bam
	if test -f "$FILE"; then
	    echo "$fname already DONE! : $FILE"
	else
	    echo Mapping :  $counter out of 134
	    echo mapping file:  $fastqfile
	    echo "Output base name:" $fname

	  software/RSEM-1.3.3/rsem-calculate-expression --star \
          --star-path software/STAR-2.7.6a/bin/Linux\_x86\_64/ \
          --phred64-quals \
          --keep-intermediate-files \
            --num-threads $SLURM_NTASKS \
            --star-gzipped-read-file \
            --star-output-genome-bam \
               $fastqfile \
               $indexname \
               $outputpath/$fname


    printf "\n"
    echo  Done with $fname 
    printf "\n"

	fi

done;   

