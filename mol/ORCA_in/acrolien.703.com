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

# 	15346
* xyz 0 1
		C   -1.220042  -0.227665   0.004760
		O   -1.242246  -1.316469  -0.590393
		C    0.023293   0.490391  -0.115819
		C    1.198195  -0.067334   0.121695
		H   -1.949447   0.150551   0.701714
		H   -0.107530   1.598373  -0.334166
		H    1.227927  -1.159047   0.278054
		H    2.041462   0.498681  -0.040772
*
