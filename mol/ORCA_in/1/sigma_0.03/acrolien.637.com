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

# 	23246
* xyz 0 1
		C   -0.521127  -0.421236   0.030592
		O   -0.535820  -1.613293  -0.002029
		C    0.602790   0.473217  -0.037742
		C    1.749729  -0.206455  -0.009925
		H   -1.492321   0.135902  -0.102520
		H    0.468299   1.581900   0.178912
		H    1.837227  -1.311930   0.047517
		H    2.842187   0.307398   0.126853
*