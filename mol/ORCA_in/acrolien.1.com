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

# 	31436
* xyz 0 1
		C   -0.560022  -0.456296   0.044537
		O   -0.568358  -1.607150  -0.026413
		C    0.604761   0.443027  -0.024198
		C    1.836345  -0.144537  -0.002787
		H   -1.608649   0.106293   0.062844
		H    0.339457   1.475879  -0.074203
		H    1.905043  -1.291720   0.217552
		H    2.900470   0.350952  -0.004158
*
