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

# 	4795
* xyz 0 1
		C   -1.186118  -0.296446   0.020690
		O   -1.824795  -0.809540   0.929987
		C   -0.034956   0.541717   0.228734
		C    1.199397   0.048976  -0.236441
		H   -1.397820  -0.566406  -0.964880
		H   -0.229899   1.297920   0.805229
		H    1.239056  -0.948471  -0.708321
		H    2.201928   0.664711  -0.123196
*
