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

# 	12817
* xyz 0 1
		C   -1.179638  -0.319582  -0.041720
		O   -2.102487  -0.474903  -0.796616
		C    0.043820   0.346112  -0.460161
		C    1.266583   0.131768   0.198142
		H   -1.279353  -0.757451   1.093851
		H   -0.020140   1.056358  -1.182481
		H    1.278213  -0.763926   0.952430
		H    1.993644   0.780402   0.253263
*
