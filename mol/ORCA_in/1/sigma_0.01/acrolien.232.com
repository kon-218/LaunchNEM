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

# 	18895
* xyz 0 1
		C   -1.243937  -0.349987  -0.016033
		O   -2.069366  -0.645079  -0.814612
		C   -0.011188   0.371467  -0.333093
		C    1.155906   0.149425   0.267090
		H   -1.274536  -0.801932   1.089844
		H    0.077957   1.146897  -1.291263
		H    1.319934  -0.504469   1.059947
		H    2.033615   0.630468   0.090005
*
