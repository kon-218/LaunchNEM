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

# 	16676
* xyz 0 1
		C   -1.160415  -0.328853   0.076918
		O   -2.116736  -0.353148   0.879038
		C    0.076296   0.384771   0.314720
		C    1.186069   0.104995  -0.283633
		H   -1.185832  -0.845070  -0.818039
		H   -0.003339   1.064057   1.040702
		H    1.258433  -0.568598  -1.156725
		H    2.004252   0.574922  -0.068646
*