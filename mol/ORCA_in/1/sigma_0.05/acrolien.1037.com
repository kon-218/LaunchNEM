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

# 	28800
* xyz 0 1
		C   -0.565343  -0.453316  -0.020987
		O   -0.612603  -1.661241   0.015159
		C    0.621243   0.432992  -0.026585
		C    1.872703  -0.090961   0.001357
		H   -1.475436   0.153811   0.081677
		H    0.618237   1.456675   0.184124
		H    1.932234  -1.218575  -0.063445
		H    2.655162   0.534381   0.122166
*