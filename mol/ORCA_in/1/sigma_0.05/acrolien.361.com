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

# 	16240
* xyz 0 1
		C   -1.249006  -0.323018  -0.080220
		O   -1.182351  -1.529934   0.000611
		C   -0.041360   0.477166   0.008953
		C    1.258053  -0.051583  -0.079691
		H   -2.165895   0.255273  -0.183636
		H   -0.176279   1.462656   0.153057
		H    1.547823  -1.049541   0.113343
		H    2.047058   0.688962   0.012335
*
