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

# 	22477
* xyz 0 1
		C   -0.624649  -0.460664  -0.062561
		O   -0.586966  -1.632252   0.036136
		C    0.651680   0.401397   0.059097
		C    1.870161  -0.112356  -0.041718
		H   -1.504848   0.242846  -0.182637
		H    0.546871   1.530838   0.157526
		H    2.089022  -1.120556  -0.025072
		H    2.551969   0.577764   0.027112
*
