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

# 	14040
* xyz 0 1
		C   -1.211877  -0.319204   0.017647
		O   -1.118610  -1.509211   0.081306
		C    0.026636   0.645124   0.141126
		C    1.228449  -0.066081   0.024425
		H   -2.197427   0.254660  -0.291401
		H   -0.229296   1.676751   0.156789
		H    1.286786  -1.203539  -0.092697
		H    2.241215   0.526102  -0.056969
*
