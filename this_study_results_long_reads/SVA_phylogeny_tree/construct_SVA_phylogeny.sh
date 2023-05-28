
~/tools/muscle3.8.31_i86linux64 -in  merged_ref_polymorphic_SVA_SINE_R.fa -out ./all_SVA_copy_msa.afa
#
trimal -in all_SVA_copy_msa.afa -out all_SVA_copy_msa.afa2  -htmlout all_SVA_copy_msa.afa.html -gt 0.6 -st 0.001 -resoverlap 0.75 -seqoverlap 90
#
raxmlHPC-PTHREADS-SSE3 -T 15 -f a -m GTRGAMMA -p 12345 -x 12345 -s all_SVA_copy_msa.afa2  -# 1000 -n all_SVA_copy.tree
