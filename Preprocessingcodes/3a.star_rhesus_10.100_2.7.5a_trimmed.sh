#!/bin/bash                                                                                                                                          
# align reads to the genome

source /share/lwhitmo/pythonvenvs/py3venv/bin/activate

htseq-count -h

array=(G003_O04_CyCMV_36479_D0_RNA_mRNAseq_2_run09_S3 G004_O04_CyCMV_36480_D0_RNA_2_mRNAseq_2_run12_S22 G005_O04_CyCMV_36485_D0_RNA_2_mRNAseq_2_run13_S23 G006_O04_CyCMV_36490_D0_RNA_2_mRNAseq_2_run10_S9 G009_O04_CyCMV_36479_D3_RNA_mRNAseq_2_merged G010_O04_CyCMV_36480_D3_RNA_2_mRNAseq_2_run07_S13 G011_O04_CyCMV_36485_D3_RNA_2_mRNAseq_2_run12_S27 G012_O04_CyCMV_36490_D3_RNA_mRNAseq_2_run09_S11 G015_O04_CyCMV_36479_D7_RNA_mRNAseq_2_run09_S5 G016_O04_CyCMV_36480_D7_RNA_mRNAseq_2_run07_S1 G017_O04_CyCMV_36485_D7_RNA_mRNAseq_2_run11_S11 G018_O04_CyCMV_36490_D7_RNA_mRNAseq_2_run07_S14 G021_O04_CyCMV_36479_D14_RNA_mRNAseq_2_merged G022_O04_CyCMV_36480_D14_RNA_2_mRNAseq_2_run11_S13 G023_O04_CyCMV_36485_D14_RNA_mRNAseq_2_run10_S14 G024_O04_CyCMV_36490_D14_RNA_2_mRNAseq_2_run10_S4 G025_O04_CyCMV_36953_D0_RNA_2_mRNAseq_2_run12_S19 G026_O04_CyCMV_36957_D0_RNA_mRNAseq_2_run11_S9 G027_O04_CyCMV_36958_D0_RNA_mRNAseq_2_run12_S24 G028_O04_CyCMV_36959_D0_RNA_mRNAseq_2_run10_S2 G029_O04_CyCMV_36953_D3_RNA_2_mRNAseq_2_run09_S2 G030_O04_CyCMV_36957_D3_RNA_mRNAseq_2_run09_S10 G031_O04_CyCMV_36958_D3_RNA_mRNAseq_2_run09_S14 G032_O04_CyCMV_36959_D3_RNA_mRNAseq_2_run11_S5 G033_O04_CyCMV_36953_D7_RNA_2_mRNAseq_2_merged G034_O04_CyCMV_36957_D7_RNA_mRNAseq_2_run10_S10 G035_O04_CyCMV_36958_D7_RNA_mRNAseq_2_run13_S20 G036_O04_CyCMV_36959_D7_RNA_mRNAseq_2_run13_S21 G037_O04_CyCMV_36953_D14_RNA_mRNAseq_2_run08_S16 G038_O04_CyCMV_36957_D14_RNA_mRNAseq_2_run07_S15 G039_O04_CyCMV_36958_D14_RNA_mRNAseq_2_run09_S13 G040_O04_CyCMV_36959_D14_RNA_mRNAseq_2_run11_S12 G041_O04_CyCMV_36479_D1_RNA_mRNAseq_run10_S8 G042_O04_CyCMV_36480_D1_RNA_mRNAseq_run10_S5 G043_O04_CyCMV_36485_D1_RNA_mRNAseq_run13_S19 G044_O04_CyCMV_36490_D1_RNA_mRNAseq_run12_S25 G045_O04_CyCMV_36479_BD0_RNA_mRNAseq_run09_S8 G046_O04_CyCMV_36480_BD0_RNA_mRNAseq_run11_S1 G047_O04_CyCMV_36485_BD0_RNA_mRNAseq_2_run13_S29 G048_O04_CyCMV_36490_BD0_RNA_mRNAseq_run07_S5 G049_O04_CyCMV_36479_BD1_RNA_mRNAseq_run07_S8 G050_O04_CyCMV_36480_BD1_RNA_mRNAseq_run07_S4 G051_O04_CyCMV_36485_BD1_RNA_mRNAseq_run11_S3 G052_O04_CyCMV_36490_BD1_RNA_mRNAseq_run10_S13 G053_O04_CyCMV_36479_DX1_RNA_mRNAseq_run10_S3 G054_O04_CyCMV_36480_DX1_RNA_mRNAseq_run09_S7 G055_O04_CyCMV_36485_DX1_RNA_mRNAseq_run10_S7 G056_O04_CyCMV_36490_DX1_RNA_mRNAseq_run11_S2 G057_O04_CyCMV_36479_BD7_RNA_mRNAseq_run11_S8 G058_O04_CyCMV_36480_BD7_RNA_mRNAseq_run08_S15 G059_O04_CyCMV_36485_BD7_RNA_mRNAseq_run09_S6 G060_O04_CyCMV_36490_BD7_RNA_mRNAseq_merged G061_O04_CyCMV_36479_DX2_RNA_mRNAseq_run10_S11 G062_O04_CyCMV_36480_DX2_RNA_mRNAseq_run07_S6 G063_O04_CyCMV_36485_DX2_RNA_mRNAseq_run10_S12 G064_O04_CyCMV_36490_DX2_RNA_mRNAseq_run12_S29 G065_O04_CyCMV_36953_D1_RNA_mRNAseq_run12_S21 G066_O04_CyCMV_36957_D1_RNA_mRNAseq_run12_S20 G067_O04_CyCMV_36958_D1_RNA_mRNAseq_merged G068_O04_CyCMV_36959_D1_RNA_mRNAseq_run12_S28 G069_O04_CyCMV_36953_BD0_RNA_mRNAseq_run07_S3 G070_O04_CyCMV_36957_BD0_RNA_mRNAseq_run07_S12 G071_O04_CyCMV_36958_BD0_RNA_mRNAseq_run10_S15 G072_O04_CyCMV_36959_BD0_RNA_mRNAseq_run11_S4 G073_O04_CyCMV_36953_BD1_RNA_mRNAseq_run08_S14 G074_O04_CyCMV_36957_BD1_RNA_mRNAseq_run10_S6 G075_O04_CyCMV_36958_BD1_RNA_mRNAseq_run09_S12 G076_O04_CyCMV_36959_BD1_RNA_mRNAseq_run12_S26 G077_O04_CyCMV_36953_BD3_RNA_mRNAseq_merged G078_O04_CyCMV_36957_BD3_RNA_mRNAseq_run11_S7 G079_O04_CyCMV_36958_BD3_RNA_mRNAseq_run11_S6 G080_O04_CyCMV_36959_BD3_RNA_mRNAseq_run13_S22 G081_O04_CyCMV_36953_BD7_RNA_mRNAseq_run09_S9 G082_O04_CyCMV_36957_BD7_RNA_mRNAseq_run10_S1 G083_O04_CyCMV_36958_BD7_RNA_2_mRNAseq_run13_S26 G084_O04_CyCMV_36959_BD7_RNA_mRNAseq_merged G085_O04_CyCMV_36953_D14_RNA_mRNAseq_run13_S24 G086_O04_CyCMV_36957_D14_RNA_mRNAseq_run09_S4 G087_O04_CyCMV_36958_D14_RNA_2_mRNAseq_run13_S25 G088_O04_CyCMV_36959_D14_RNA_mRNAseq_run07_S9 G901_O04_CyCMV_control_plate1_1_mRNAseq_run14_S1 G902_O04_CyCMV_control_plate1_2_mRNAseq_run14_S2 G903_O04_CyCMV_control_plate1_3_mRNAseq_run14_S3 G904_O04_CyCMV_control_plate2_1_RNA_mRNAseq_run13_S27 G906_O04_CyCMV_control_plate2_3_RNA_mRNAseq_run13_S28)


mkdir -p ../logs/mapping_cyno

mkdir -p ../mapping_cyno

mkdir -p ../counts_cyno

cd ../nohmrRNA_noglobin_trimmed

echo "Array size: ${#array[*]}"
echo "Array items:"

for item in ${array[*]}
do

    printf "   %s\n" $item

    # STAR
    cmd='TAR --genomeDir ./Macaca_fascicularis/ --clip5pNbases 1 --twopassMode=Basic --quantMode=GeneCounts --readFilesCommand zcat --outSAMtype BAM Unsorted --readFilesIn '$item'_nohmrRNA_noglobin.fastq.1.gz '$item'_nohmrRNA_noglobin.fastq.2.gz --outFileNamePrefix ../mapping_cyno/'$item' --runThreadN 10 1>../logs/mapping_cyno/'$item'_mapping.log 2>&1'

    echo $cmd
    echo $cmd >> ../logs/mapping_cyno/$item\_mapping.log
    eval $cmd
    
    # move a copy of the STAR generated log to the log folder
    cp ../mapping_cyno/$item\Log.final.out ../logs/mapping_cyno/

    cmd2='/usr/local/bin/samtools sort -o ../mapping_cyno/'$item'Aligned.sortedByName.out.bam -O bam -n -T ../mapping_cyno/'$item'Aligned.sortedByName.out -@ 20 ../mapping_cyno/'$item'Aligned.out.bam 1>>../logs/mapping_cyno/'$item'_mapping.log 2>&1'

    echo $cmd2
    echo $cmd2 >> ../logs/mapping_cyno/$item\_mapping.log
    eval $cmd2

    cmd3='htseq-count --stranded=reverse --format=bam --mode=intersection-nonempty --order=name --idattr=gene_id ../mapping_cyno/'$item'Aligned.sortedByName.out.bam /vol01/genome/Macaca_fascicularis/Macaca_fascicularis.Macaca_fascicularis_6.0.104.gtf > ../counts_cyno/'$item'_counts.txt &'

    echo $cmd3
    echo $cmd3 >> ../logs/mapping_cyno/$item\_mapping.log
    eval $cmd3

done
