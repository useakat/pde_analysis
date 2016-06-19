org=$1
out=$2

for infile in *.$org; do
convert $infile ${infile%.*}.$out ;
done