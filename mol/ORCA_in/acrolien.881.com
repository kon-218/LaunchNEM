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

# 	28139
* xyz 0 1
		C   -0.544496  -0.460971   0.008414
		O   -0.610886  -1.638657   0.000909
		C    0.637960   0.455908  -0.007154
		C    1.837259  -0.119967  -0.024529
		H   -1.499857  -0.034144  -0.035065
		H    0.471224   1.494097   0.072251
		H    1.924236  -1.237003   0.098999
		H    2.778520   0.497688   0.136123
*
