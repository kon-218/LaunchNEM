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

# 	14544
* xyz 0 1
		C   -1.155812  -0.310619   0.004597
		O   -1.296745  -1.422764   0.428490
		C    0.011021   0.605840   0.115281
		C    1.235027   0.029605  -0.070373
		H   -1.969733   0.101487  -0.550847
		H   -0.177098   1.655756   0.331622
		H    1.183024  -1.195462  -0.178242
		H    2.196699   0.582050  -0.037971
*