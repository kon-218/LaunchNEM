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

# 	19765
* xyz 0 1
		C   -1.212474  -0.366425   0.063006
		O   -1.343464  -1.544879   0.273753
		C    0.018963   0.463860   0.148399
		C    1.230849  -0.022992  -0.017530
		H   -2.073024   0.167032  -0.383961
		H   -0.202585   1.607434   0.275238
		H    1.468218  -0.968695  -0.058886
		H    2.133376   0.636438  -0.219204
*
