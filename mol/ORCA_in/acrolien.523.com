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

# 	31578
* xyz 0 1
		C   -0.590654  -0.413011   0.084047
		O   -0.546701  -1.630787  -0.052221
		C    0.638396   0.399127  -0.055908
		C    1.786597  -0.121837   0.016765
		H   -1.544392   0.072522   0.218699
		H    0.710723   1.601905  -0.229380
		H    1.808149  -1.266352   0.277354
		H    2.833686   0.333419   0.009420
*
