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

# 	9510
* xyz 0 1
		C   -1.141691  -0.369247  -0.009603
		O   -1.553894  -1.274959  -0.820782
		C   -0.035070   0.430541  -0.214341
		C    1.167801   0.102519   0.172060
		H   -1.782622  -0.159494   0.823639
		H   -0.195302   1.576610  -0.503906
		H    1.416829  -0.909681   0.442242
		H    2.146146   0.650624   0.061527
*
