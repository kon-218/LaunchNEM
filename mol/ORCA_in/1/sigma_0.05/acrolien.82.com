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

# 	32500
* xyz 0 1
		C   -0.610058  -0.421027   0.083981
		O   -0.560390  -1.589551  -0.069120
		C    0.599281   0.361653  -0.062238
		C    1.893879  -0.126485   0.028993
		H   -1.688070   0.075207   0.467736
		H    0.513723   1.336764  -0.361125
		H    1.917912  -1.392699   0.435337
		H    2.653639   0.665512  -0.083985
*