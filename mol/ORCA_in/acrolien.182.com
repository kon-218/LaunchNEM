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

# 	29837
* xyz 0 1
		C   -0.588377  -0.425073  -0.002911
		O   -0.578394  -1.631543  -0.005894
		C    0.631469   0.417870  -0.032293
		C    1.857638  -0.125979   0.029933
		H   -1.382231   0.197350   0.206719
		H    0.250836   1.410923   0.015420
		H    1.966219  -1.319127  -0.014389
		H    2.628210   0.466578  -0.056710
*
