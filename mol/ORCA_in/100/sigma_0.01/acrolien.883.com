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

# 	12159
* xyz 0 1
		C   -1.178394  -0.384199   0.095758
		O   -2.228958  -0.383638   0.672663
		C    0.010578   0.387022   0.398474
		C    1.200481   0.202747  -0.222343
		H   -1.097429  -1.053800  -0.791359
		H   -0.142197   1.112082   1.188980
		H    1.167045  -0.417835  -1.286045
		H    2.218941   0.594354  -0.098517
*