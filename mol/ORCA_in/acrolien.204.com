! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	4420
* xyz 0 1
		C   -1.201958  -0.305565   0.021283
		O   -1.177367  -1.542270   0.082434
		C    0.016749   0.495306   0.087594
		C    1.234277  -0.044747   0.054229
		H   -2.199324   0.246057  -0.125037
		H   -0.141055   1.558866  -0.068617
		H    1.398910  -1.126258  -0.181949
		H    2.056526   0.742952   0.124935
*
