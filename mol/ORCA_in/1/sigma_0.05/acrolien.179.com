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

# 	30762
* xyz 0 1
		C   -0.596061  -0.463883   0.010147
		O   -0.668789  -1.738975   0.003624
		C    0.678108   0.454146   0.057369
		C    1.908680  -0.024384  -0.030405
		H   -1.518875   0.108006  -0.334420
		H    0.513003   1.461010  -0.114777
		H    2.011441  -0.984605  -0.036829
		H    2.878520   0.645721  -0.013855
*
