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

# 	5108
* xyz 0 1
		C   -1.142969  -0.303271  -0.039802
		O   -1.514245  -1.245880  -0.708483
		C    0.025452   0.518322  -0.184311
		C    1.237255   0.025633   0.168879
		H   -1.739858  -0.074146   0.895383
		H   -0.106881   1.545307  -0.620370
		H    1.349858  -1.070626   0.575304
		H    1.921798   0.633014  -0.056949
*
