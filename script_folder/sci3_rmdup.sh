
input_folder=$1
sample=$2
output_folder=$3
mismatch=$4

#python="/net/shendure/vol1/home/cao1025/anaconda2/bin/python2.7"
module load python2/2.7.16
python_script="/projectnb/czlab/A07_JP/sci-RNA-seq3_pipeline/script_folder/rm_dup_barcode_UMI.py"

echo Filtering sample: $sample

python $python_script $input_folder/$sample.sam $output_folder/$sample.sam $mismatch

module unload python2/2.7.16
echo Filtering $sample done.