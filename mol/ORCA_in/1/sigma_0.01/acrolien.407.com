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

# 	29550
* xyz 0 1
		C   -0.616914  -0.435329  -0.017428
		O   -0.609969  -1.663815   0.014396
		C    0.646254   0.378850  -0.004662
		C    1.895710  -0.061815   0.023303
		H   -1.613506   0.135751  -0.040794
		H    0.509301   1.444345   0.068693
		H    1.985888  -1.033568  -0.236756
		H    2.804126   0.515699  -0.028396
*