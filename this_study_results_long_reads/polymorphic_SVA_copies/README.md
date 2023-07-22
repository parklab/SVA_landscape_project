# Polymorphic SVA insertions from long reads

## `pacbio_nanopore_SVA_rslts3.fasta`

This file contains the rawly identified SVA insertions from the 20 long reads samples with xTea long-read module. Each record in formation "SampleID_chrm_position", where `SampleID` is from which sample the insertion was identified, `chrm` and `position` are the coordinates of the insertion. Note, there are still potential false positives within this file. 

## pacbio_nanopore_SVA_rslts3.fasta.out

This is the RepeatMasker annotation of the identifed (and merged) SVA insertions.

## pacbio_nanopore_SVA_rslts3_all_samples.type_class

This is the refined annotation from this study. For each column:
`Id,Type,Full_copy,TD5,Pre_Alu,MAST2,Hex,Alu_like,VNTR,SINE_R,Suf_Alu,TD3,Orientation,Total_len`

```
Id: In format SampleId_Chrm_Position
Type: Annotated subfamily of the SVA copy;
Full_copy: Indicates whether this is a full or truncated copy;
TD5: 5' transduction ("NULL" if not);
Pre_Alu: This is for CH10_SVA_F, whose full-structure contains the two-sides Alus. Shown in format "subfamily_start_end" (e.g. "AluSc_182_309");
MAST2: This is for CH10_SVA_F and SVA_F1, which have fusion region with MAST2 gene. Shown in format "start_end" (coordinate of the gene);
Hex: Length of the (CCCTCT)n hexamer region;
Alu_like: Length of the Alu-like region;
VNTR: Length of the VNTR region;
SINE_R: Length of the SINE-R region;
Suf_Alu: This is for CH10_SVA_F, whose full-structure contains the two-sides Alus. Shown in format "subfamily_start_end" (e.g. "AluSp_1_301");
TD3: 3' transduction ("NULL" if not);
Orientation: Insertion orientation;
Total_len: Total length of the SVA copy.
```

## all_long_read_samples_SVA_ins_peak_sites.txt

This is the merged results for all the selected samples. Some of the insertions/copies may not have the exact breakpoint but are closed to each other and these are grouped (based on a voting strategy) as one insertion. 

## pacbio_nanopore_SVA_rslts3_uncertain_family.fasta.out

Some of the SVA copies are annotated to more than one SVA subfamilies, thus we put them in this file. Note, these "Uncertain subfamily" copies were excluded in our downstream analysis. 

