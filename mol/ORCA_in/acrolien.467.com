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

# 	30041
* xyz 0 1
		C   -0.508251  -0.430370  -0.005003
		O   -0.614305  -1.656104   0.019813
		C    0.617160   0.458319   0.007729
		C    1.825454  -0.151607   0.008744
		H   -1.584064   0.065077  -0.327772
		H    0.585097   1.517199   0.205403
		H    2.153322  -1.207653  -0.212671
		H    2.571596   0.648190  -0.104750
*
