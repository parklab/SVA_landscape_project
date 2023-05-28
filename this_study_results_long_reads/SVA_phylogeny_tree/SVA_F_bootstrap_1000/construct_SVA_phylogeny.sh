
~/tools/muscle3.8.31_i86linux64 -in  merged_ref_polymorphic_SVA_F_SINE_R.fa \
-out ./merged_ref_polymorphic_SVA_F_SINE_R.afa
#
trimal -in merged_ref_polymorphic_SVA_F_SINE_R.afa -out merged_ref_polymorphic_SVA_F_SINE_R.afa2  -htmlout merged_ref_polymorphic_SVA_F_SINE_R.afa.html -gt 0.6 -st 0.001 -resoverlap 0.75 -seqoverlap 90
#
raxmlHPC-PTHREADS-SSE3 -T 15 -f a -m GTRGAMMA -p 12345 -x 12345 -s merged_ref_polymorphic_SVA_F_SINE_R.afa2  -# 1000 -n merged_ref_polymorphic_SVA_F_SINE_R.tree
