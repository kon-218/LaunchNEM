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

# 	8714
* xyz 0 1
		C   -1.166852  -0.286235   0.102876
		O   -2.096100  -0.457531   0.826381
		C    0.032844   0.425186   0.345522
		C    1.160773   0.091261  -0.272395
		H   -1.242007  -0.874213  -0.863463
		H    0.029208   1.152908   1.114831
		H    1.188201  -0.705546  -1.146625
		H    2.155900   0.667049  -0.138091
*
