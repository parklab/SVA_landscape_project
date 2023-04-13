## SVA annotation refinement module

The whole refinement module has been integrated into the the xTea long reads module (https://github.com/parklab/xTea/tree/xTea_long_release_v0.1.0).

## Download

1. download from the xTea long reads repo

	```
	git clone --single-branch --branch xTea_long_release_v0.1.0 https://github.com/parklab/xTea.git
	```


## Dependency

1. bwa (version **0.7.17** or later, require the **-o** option), which can be downloaded from https://github.com/lh3/bwa.
2. samtools (v1.0 or later), which can be downloaded from https://github.com/samtools.
3. minimap2 (for long reads only), which can be downloaded from https://github.com/lh3/minimap2.
4. wtdbg2 (for long reads only), which can be downloaded from https://github.com/ruanjue/wtdbg2.
5. Python 3.6+ 
	+ pysam (https://github.com/pysam-developers/pysam, v0.12 or later) is required to be installed.
		+ Install pysam:

			```
			conda config --add channels r
			conda config --add channels bioconda
			conda install pysam -y
			```
	+ sortedcontainers
		+ Install sortedcontainers
		`conda install sortedcontainers -y`

4. Note: bwa, minimap2, wtdbg2 and samtools need to be added to the $PATH.



## Run the pipeline
1. **Input**
	+ SVA sequences in fasta format
	
		
	+ RepeatMasker annotation of the SVA sequences, like:

		```
		13    6.3 12.1  0.0  AK1_chr10_100092111      1    33  (2827) + (CTCTTCC)n   Simple_repeat         1     37    (0)    1
		3276   12.1  4.7  9.3  AK1_chr10_100092111     34  1364  (1496) + SVA_C        Retroposon/SVA        2    870  (517)    2
		1258    9.2  2.5 11.9  AK1_chr10_100092111   1025  1951   (909) + SVA_F        Retroposon/SVA      386    864  (518)    2 *
		5334    6.2  2.4  8.9  AK1_chr10_100092111   1558  2850    (10) + SVA_F        Retroposon/SVA      422   1375    (0)    2
 		51    0.0  0.0  3.8  AK1_chr10_100276470      1    55  (2286) + (TCTCCC)n    Simple_repeat         1     53    (0)    3
		5097    8.8  4.1  3.0  AK1_chr10_100276470     56  1122  (1219) + SVA_C        Retroposon/SVA       53    870  (517)    4
		1571    8.0  1.6 12.6  AK1_chr10_100276470    744  1722   (619) + SVA_F        Retroposon/SVA      419    864  (518)    4 *
		6211    6.1  2.6  5.8  AK1_chr10_100276470   1366  2341     (0) + SVA_E        Retroposon/SVA      429   1374    (8)    4

		```
	
	+ MAST2 gene fasta file:
		This file can be downloaded in this repo, named `MAST2_gene.fa`

	+ Hexamer sequence file:
		This file can be downloaded in this repo, named `heximer4.txt`
	
			
2. **Run the pipeline**
	
	
	2.1 Generate the running script.	
			
	+ Run on a cluster or a single node
		+ Demo script
		
			```  
			SEQ=[the fast sequence of the to be annotated SVA copies]
			RMSK=[full path of the RepeatMasker annotation file of the SVA sequences]

			WFOLDER=[replace with abosolute-path-of-working-folder]
			XTEA=[replace with abosolute-path-of-xTea-folder contain the *.py code; for example ./xTea_long_release_v0.1.0/xtea_long/]
			
			MAST2=[full path of the downloaded MAST2 gene fasta file]
			HEX=[full path of the downloaded hexamer fasta file]
			REF=[full path of the reference genome file]
			
			
			python ${XTEA}"classify_TE_insertion_from_rmsk.py"  --seq ${SEQ} --rmsk ${RMSK} --hexam ${HEX} --mast2 ${MAST2}  -n 8 -p ${WFOLDER} --ref ${REF} -o ${OUT_SCRTP}
			```


			
		+ Parameters:
			
			```
			Required:
				--seq: the sequence of the to be annotated SVA copies in fasta format;
				--rmsk: the RepeatMasker annotation file of the SVA sequences;
				--hexam: the hexamer sequence file;
				--mast2: the MAST2 gene sequence file;
				-n: number of threads
				-p: working folder, where the results and temporary files will be saved;
				--ref: reference genome file;
				-o: output annotation file;
				
			```
		
	
3. **Output**

	The refined annotation will be saved in the file annotated in `-o` option.

