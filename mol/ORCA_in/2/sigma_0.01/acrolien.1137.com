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

# 	13019
* xyz 0 1
		C   -1.139362  -0.367248  -0.076747
		O   -2.237079  -0.169994  -0.686063
		C    0.104743   0.369820  -0.394519
		C    1.157429   0.078549   0.343887
		H   -1.089858  -1.123945   0.747247
		H    0.055007   1.019639  -1.272844
		H    1.250706  -0.602155   1.029235
		H    1.911077   0.780472   0.264765
*