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

# 	1117
* xyz 0 1
		C   -1.142009  -0.366143  -0.006422
		O   -2.153221  -0.515159  -0.688442
		C   -0.058386   0.359384  -0.432055
		C    1.104943   0.174529   0.196840
		H   -1.019994  -0.944678   1.030663
		H   -0.075963   1.071661  -1.219327
		H    1.147703  -0.438113   1.186740
		H    2.179260   0.670492  -0.036024
*