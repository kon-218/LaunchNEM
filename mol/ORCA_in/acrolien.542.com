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

# 	9149
* xyz 0 1
		C   -1.178476  -0.323308  -0.034187
		O   -1.479548  -1.321740   0.623344
		C    0.021511   0.455995   0.247810
		C    1.172128  -0.005792  -0.167969
		H   -1.774504   0.121878  -0.829008
		H   -0.227158   1.502261   0.538549
		H    1.287715  -1.049962  -0.398408
		H    2.175451   0.569139   0.024528
*
