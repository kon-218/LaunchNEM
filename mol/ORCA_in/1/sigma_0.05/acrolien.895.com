! B3LYP 6-31G
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	23370
* xyz 0 1
		C   -0.556940  -0.440184  -0.073484
		O   -0.604803  -1.661288   0.047591
		C    0.586437   0.425431   0.076883
		C    1.884589  -0.108679  -0.051821
		H   -1.512882   0.119806  -0.293672
		H    0.571479   1.591174   0.175779
		H    1.927837  -1.242512  -0.118491
		H    2.799265   0.610172   0.076774
*
