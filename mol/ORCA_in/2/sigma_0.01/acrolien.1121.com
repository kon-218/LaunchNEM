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

# 	31362
* xyz 0 1
		C   -0.600112  -0.462970  -0.022169
		O   -0.573202  -1.634448   0.007790
		C    0.610684   0.428764   0.071029
		C    1.872828  -0.109177  -0.003052
		H   -1.724426   0.229340  -0.268008
		H    0.597933   1.481468  -0.068026
		H    1.975385  -1.343973  -0.019036
		H    2.779856   0.542088  -0.330596
*