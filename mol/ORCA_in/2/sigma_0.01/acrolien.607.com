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

# 	23710
* xyz 0 1
		C   -0.543429  -0.424556   0.060071
		O   -0.639519  -1.663140  -0.021507
		C    0.695803   0.356445  -0.039780
		C    1.817594  -0.062995   0.026262
		H   -1.443048   0.228867  -0.184744
		H    0.389944   1.471661   0.107053
		H    2.060612  -1.116212   0.064606
		H    2.657624   0.651626  -0.205569
*
