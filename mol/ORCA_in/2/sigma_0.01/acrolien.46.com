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

# 	335
* xyz 0 1
		C   -1.170639  -0.316892   0.018460
		O   -1.881107  -0.760607   0.974863
		C    0.007809   0.403321   0.301724
		C    1.148557   0.007768  -0.176681
		H   -1.383804  -0.535808  -0.972537
		H   -0.163380   1.321478   0.878391
		H    1.303967  -0.645453  -0.820399
		H    2.139729   0.500888  -0.242230
*