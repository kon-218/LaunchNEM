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

# 	24885
* xyz 0 1
		C   -0.614476  -0.414368   0.024527
		O   -0.612882  -1.665172  -0.032051
		C    0.633511   0.339687   0.000502
		C    1.874476  -0.067108   0.039160
		H   -1.538527   0.266892   0.172652
		H    0.777896   1.425995  -0.265391
		H    2.261605  -0.973273   0.109208
		H    2.652606   0.683988  -0.305063
*