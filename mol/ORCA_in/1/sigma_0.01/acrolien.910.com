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

# 	4745
* xyz 0 1
		C   -1.193748  -0.340825  -0.022525
		O   -1.404257  -1.326040  -0.626851
		C    0.014056   0.455654  -0.137238
		C    1.222543   0.053410   0.163108
		H   -1.975848   0.002782   0.751531
		H   -0.092870   1.564171  -0.580346
		H    1.218761  -1.067714   0.504435
		H    2.247001   0.553952  -0.037728
*
