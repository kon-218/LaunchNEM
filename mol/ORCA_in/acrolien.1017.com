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

# 	11875
* xyz 0 1
		C   -1.195610  -0.364646  -0.072946
		O   -2.019283  -0.600390  -0.834114
		C   -0.058325   0.490066  -0.267909
		C    1.155285   0.082119   0.210925
		H   -1.041298  -0.759632   0.828929
		H   -0.163616   1.454858  -0.905337
		H    1.194627  -0.908746   0.932156
		H    2.180994   0.651128   0.076342
*
