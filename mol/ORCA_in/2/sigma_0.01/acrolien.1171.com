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

# 	23580
* xyz 0 1
		C   -0.539050  -0.452292  -0.043282
		O   -0.607857  -1.625452   0.024769
		C    0.616128   0.416954   0.061963
		C    1.847599  -0.127868  -0.044527
		H   -1.474155   0.056205  -0.189523
		H    0.400293   1.597715   0.056168
		H    2.003049  -1.145276   0.027672
		H    2.755075   0.488673   0.027414
*
