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

# 	3345
* xyz 0 1
		C   -1.202435  -0.341227  -0.044494
		O   -1.311816  -1.419635  -0.474028
		C    0.057486   0.497654  -0.143906
		C    1.262075   0.020647   0.091042
		H   -2.071849   0.254783   0.736609
		H   -0.124677   1.513440  -0.417239
		H    1.289789  -1.068468   0.375022
		H    2.163598   0.569621  -0.059770
*
