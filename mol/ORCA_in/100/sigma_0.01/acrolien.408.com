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

# 	3408
* xyz 0 1
		C   -1.179802  -0.328503  -0.005253
		O   -1.611366  -1.340221  -0.702767
		C    0.002509   0.424189  -0.225450
		C    1.184758   0.062238   0.089079
		H   -1.864939   0.016315   0.760694
		H   -0.089939   1.477355  -0.573724
		H    1.383547  -0.911678   0.677617
		H    2.154701   0.662615  -0.013145
*
