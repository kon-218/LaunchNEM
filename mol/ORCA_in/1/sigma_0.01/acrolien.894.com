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

# 	30676
* xyz 0 1
		C   -0.572205  -0.395681  -0.007220
		O   -0.557917  -1.608420   0.007944
		C    0.605561   0.415760  -0.008623
		C    1.835550  -0.167111   0.016637
		H   -1.568751  -0.062944  -0.032753
		H    0.379195   1.435603   0.069245
		H    2.003094  -1.217656  -0.137173
		H    2.703625   0.379084  -0.030967
*
