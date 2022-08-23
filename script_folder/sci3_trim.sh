
input_folder=$1
sample=$2
output_folder=$3

#module load python2/2.7.16
#module load cutadapt/1.18
#module load fastqc
#module load trimgalore/0.4.4


module unload python2/2.7.16
module unload cutadapt/1.18

module load python3/3.8.10
module load cutadapt/3.4
module load fastqc
module load trimgalore/0.6.7

echo Trimming sample: $sample
trim_galore $input_folder/$sample*.gz -a AAAAAAAA --three_prime_clip_R1 1 -o $output_folder
#module unload python2/2.7.16
module unload cutadapt/3.4
module unload python3/3.8.10
echo Trimming $sample done.