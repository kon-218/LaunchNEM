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

# 	7089
* xyz 0 1
		C   -1.175567  -0.253140  -0.038063
		O   -1.667806  -1.024095  -0.872586
		C    0.088883   0.523571  -0.193144
		C    1.237615   0.010171   0.101016
		H   -1.679726  -0.384247   1.118351
		H   -0.126104   1.447023  -0.858988
		H    1.302854  -0.949252   0.706103
		H    2.112788   0.566600   0.015023
*
