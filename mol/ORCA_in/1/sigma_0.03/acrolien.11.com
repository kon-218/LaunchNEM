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

# 	12345
* xyz 0 1
		C   -1.221629  -0.362283  -0.086000
		O   -1.191759  -1.469029  -0.234327
		C    0.064518   0.535909  -0.016663
		C    1.257956  -0.012860   0.028496
		H   -2.183690   0.249441   0.137442
		H   -0.127871   1.539865   0.036443
		H    1.466633  -1.072346   0.024068
		H    1.898410   0.634037   0.109607
*
