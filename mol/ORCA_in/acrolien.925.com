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

# 	2945
* xyz 0 1
		C   -1.172950  -0.316295  -0.005486
		O   -1.287116  -1.467265  -0.317482
		C   -0.017327   0.534535  -0.142510
		C    1.216074  -0.028314   0.060677
		H   -2.064623   0.303587   0.371177
		H   -0.089926   1.707144  -0.208715
		H    1.272721  -1.180829   0.256713
		H    2.170848   0.517043   0.018354
*
