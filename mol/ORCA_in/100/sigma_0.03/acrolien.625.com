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

# 	3302
* xyz 0 1
		C   -1.193364  -0.393011   0.008741
		O   -1.264446  -1.523205  -0.259789
		C    0.015491   0.501623  -0.095651
		C    1.229753  -0.021946   0.048482
		H   -2.110624   0.169990   0.349926
		H   -0.216762   1.610167  -0.343002
		H    1.374560  -1.045217   0.185218
		H    2.111704   0.627303   0.129368
*
