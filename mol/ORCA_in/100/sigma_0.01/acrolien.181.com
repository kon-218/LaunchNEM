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

# 	10315
* xyz 0 1
		C   -1.176011  -0.371194  -0.007714
		O   -1.967958  -0.713010  -0.780982
		C   -0.001855   0.479151  -0.336392
		C    1.184449   0.100974   0.110912
		H   -1.262450  -0.609670   1.011932
		H   -0.160573   1.287828  -1.053947
		H    1.225875  -0.789815   1.036548
		H    2.122324   0.631329   0.029158
*