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

# 	8904
* xyz 0 1
		C   -1.238780  -0.319209   0.011912
		O   -1.381426  -1.366661   0.575972
		C   -0.007542   0.595386   0.190397
		C    1.214048   0.012499  -0.123844
		H   -1.983886   0.073873  -0.710394
		H   -0.138154   1.703742   0.428886
		H    1.265723  -1.069650  -0.422601
		H    2.215279   0.435136  -0.033785
*