
input_folder=$1
sample=$2
output_folder=$3
barcode_file=$4
cutoff=$5

mismatch=1
#python="/net/shendure/vol1/home/cao1025/anaconda2/bin/python2.7"
module load python2/2.7.16
python_script="/projectnb/czlab/A07_JP/sci-RNA-seq3_pipeline/script_folder/sam_split.py"

python $python_script $input_folder/$sample.sam $barcode_file $output_folder $cutoff
module unload python2/2.7.16
echo splitting sample done: $sample