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

# 	16509
* xyz 0 1
		C   -1.176271  -0.340824   0.016240
		O   -1.589879  -1.256684   0.736564
		C    0.008172   0.488836   0.245605
		C    1.145525   0.101371  -0.170396
		H   -1.608606   0.005448  -1.008632
		H   -0.156787   1.138140   0.979865
		H    1.308915  -0.776350  -0.833322
		H    2.066837   0.646414   0.025283
*
