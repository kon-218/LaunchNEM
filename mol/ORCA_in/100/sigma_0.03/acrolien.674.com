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

# 	1442
* xyz 0 1
		C   -1.173561  -0.338388   0.010635
		O   -1.182529  -1.436898  -0.291109
		C   -0.009942   0.510675  -0.125235
		C    1.254409  -0.071933   0.079264
		H   -2.130037   0.210867   0.534682
		H   -0.077883   1.639276  -0.346211
		H    1.285953  -1.150199   0.225982
		H    2.090380   0.586836  -0.058029
*