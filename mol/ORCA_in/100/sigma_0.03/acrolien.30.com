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

# 	22913
* xyz 0 1
		C   -0.577304  -0.450782   0.070083
		O   -0.616463  -1.637006  -0.031832
		C    0.683054   0.392050  -0.044877
		C    1.826590  -0.096606   0.019182
		H   -1.539426   0.049797   0.042087
		H    0.640482   1.460048  -0.163656
		H    2.022234  -1.042637   0.007071
		H    2.632540   0.604806   0.086930
*
