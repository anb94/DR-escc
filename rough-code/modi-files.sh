awk 'BEGIN{FS="\t"; OFS="\t"}{print $1}' /Users/anb/Desktop/downreg-genes.csv



awk 'BEGIN{FS="\t"; OFS="\t"}{print $1}' /Users/anb/Desktop/genesetsdf.txt > genes1.txt
awk 'BEGIN{FS="\t"; OFS="\t"}{print $2}' /Users/anb/Desktop/genesetsdf.txt | awk 'BEGIN{FS="/"; OFS="/"}{print $1}'


paste "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp.pvar "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_chrpos.pvar > "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_w_chrpos.pvar


paste genes1.txt genesets-temp.txt > kegg-mod-nodes.txt





awk 'BEGIN{FS="/"; OFS="/"}{print $1}' /Users/anb/Desktop/gse_fullresults1_annot_filt_genes.csv


awk 'BEGIN{FS=" "; OFS="\t"}{print $1}' /Users/anb/Desktop/Dummy-Files/dummy_chr1_c1.info | awk 'BEGIN{FS=":"; OFS=":"}{print $2}' > ~/Desktop/infodummytemp1.txt
awk 'BEGIN{FS=" "; OFS="\t"}{print $2, $3, $4, $5, $6,$7}' /Users/anb/Desktop/Dummy-Files/dummy_chr1_c1.info > ~/Desktop/infodummytemp2.txt

awk 'BEGIN {FS="\t";OFS=","; print "about to open the file"} {$1=$1}1' file

paste ~/Desktop/infodummytemp1.txt ~/Desktop/infodummytemp2.txt > ~/Desktop/infodummytemp3.txt

consent

# Concatenate consent groups
for i in "${consent_groups[@]}"; do
  for ((j=1; j<=22; j++)); do
    echo "Concatenating ${dataset} consent group ${i} for chromosome ${j}"
    cat "${i}"/*chr"${j}"[a-z]*.dose* >> "${out_dir}"/"${dataset}"_chr"${j}".dose
  done
done
echo "Completed Concatenating ${dataset} Consent Groups"



## Concatenate consent groups 1 and 2 for African American
for ((i=1; i<=22; i++)); do
    echo "Concatenating African American c1 and c2 for chromosome ${i}"
    tail -n 50 Dummy_chr${i}c.dose > ./c2/Dummy_chr${i}c.dose.c2
done