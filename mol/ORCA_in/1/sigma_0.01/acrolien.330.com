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

# 	17692
* xyz 0 1
		C   -1.180376  -0.356841   0.053385
		O   -1.947363  -0.832304   0.890537
		C    0.024526   0.395883   0.323300
		C    1.200397   0.080568  -0.142105
		H   -1.279350  -0.480770  -1.075343
		H   -0.143424   1.223772   1.019561
		H    1.241802  -0.715952  -1.054428
		H    2.123201   0.731005   0.046197
*