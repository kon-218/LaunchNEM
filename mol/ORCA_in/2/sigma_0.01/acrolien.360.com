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

# 	6440
* xyz 0 1
		C   -1.238472  -0.341296  -0.068981
		O   -1.251240  -1.579117  -0.046274
		C   -0.029429   0.465735  -0.040354
		C    1.210217  -0.022632  -0.095360
		H   -2.058670   0.276406  -0.000738
		H   -0.175247   1.691750   0.186361
		H    1.481814  -1.159025  -0.052103
		H    2.058086   0.609700   0.124894
*
