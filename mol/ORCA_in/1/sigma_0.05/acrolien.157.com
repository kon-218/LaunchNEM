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

# 	383
* xyz 0 1
		C   -1.236424  -0.320659  -0.016466
		O   -1.321886  -1.448811   0.336410
		C   -0.035851   0.504404   0.141113
		C    1.174179  -0.022977  -0.127560
		H   -1.964870   0.051978  -0.745043
		H   -0.221596   1.653968   0.430275
		H    1.407880  -1.034406  -0.087586
		H    2.142866   0.660071   0.064808
*