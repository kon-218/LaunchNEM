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

# 	9847
* xyz 0 1
		C   -1.201460  -0.325345   0.035439
		O   -1.490732  -1.299056   0.654530
		C   -0.025727   0.482279   0.173975
		C    1.190981   0.030637  -0.045984
		H   -1.824576  -0.146452  -0.729535
		H   -0.114682   1.584090   0.489462
		H    1.301367  -0.984299  -0.419147
		H    2.100417   0.647548  -0.162344
*