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

# 	19780
* xyz 0 1
		C   -1.195308  -0.289592   0.002057
		O   -1.190262  -1.477356  -0.003592
		C   -0.020647   0.546578  -0.020723
		C    1.179611  -0.002589   0.039014
		H   -2.249405   0.190234   0.100542
		H   -0.118755   1.688618   0.029664
		H    1.312581  -1.189767  -0.037471
		H    2.256425   0.553309  -0.159052
*
