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

# 	16258
* xyz 0 1
		C   -1.146402  -0.376401   0.042456
		O   -2.088349  -0.471151   0.728104
		C   -0.022931   0.474262   0.347494
		C    1.158097   0.167361  -0.198988
		H   -1.110204  -0.891962  -0.990780
		H   -0.153236   1.143344   1.088234
		H    1.345572  -0.743860  -1.061011
		H    2.006895   0.694263   0.078477
*