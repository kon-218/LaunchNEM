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

# 	17480
* xyz 0 1
		C   -1.166135  -0.306945   0.009571
		O   -1.180454  -1.529890  -0.030623
		C    0.034697   0.652615  -0.034084
		C    1.256279   0.019053   0.001416
		H   -2.143719   0.220660   0.289581
		H   -0.235094   1.769217  -0.148712
		H    1.097123  -1.201089   0.145373
		H    2.357733   0.428194  -0.159074
*
