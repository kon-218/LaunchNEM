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

# 	8459
* xyz 0 1
		C   -1.102910  -0.385706  -0.173517
		O   -2.178392  -0.072415  -0.670992
		C    0.061409   0.278939  -0.446298
		C    1.178498   0.184277   0.380321
		H   -1.069710  -1.158328   0.624618
		H   -0.044009   1.261330  -1.089785
		H    1.041101  -0.632762   1.235744
		H    2.182096   0.582735   0.127722
*
