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

# 	17516
* xyz 0 1
		C   -1.245154  -0.470871  -0.045604
		O   -2.030476  -0.698446  -0.921056
		C   -0.031528   0.445025  -0.309960
		C    1.176028   0.036295   0.216635
		H   -1.320022  -0.741711   0.997492
		H    0.046300   1.391974  -1.020978
		H    1.241924  -0.684675   0.958230
		H    2.098527   0.722792   0.096549
*