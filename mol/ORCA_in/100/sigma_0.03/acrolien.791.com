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

# 	1794
* xyz 0 1
		C   -1.228815  -0.376301   0.037523
		O   -1.755270  -0.926971   1.004122
		C    0.025233   0.451619   0.212287
		C    1.188965  -0.007405  -0.274696
		H   -1.675720  -0.425285  -0.961115
		H    0.116076   1.475234   0.751788
		H    1.356750  -0.749413  -0.711056
		H    1.933850   0.567867  -0.133386
*