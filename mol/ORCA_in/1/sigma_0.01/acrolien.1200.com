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

# 	10621
* xyz 0 1
		C   -1.213536  -0.323697  -0.123610
		O   -1.177581  -1.533635  -0.103073
		C   -0.021544   0.448766  -0.030126
		C    1.156225  -0.057350  -0.066680
		H   -2.033766   0.426234   0.138553
		H   -0.256379   1.578651   0.098412
		H    1.256303  -1.118770   0.010534
		H    2.262072   0.573540   0.061058
*