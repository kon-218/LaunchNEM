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

# 	13772
* xyz 0 1
		C   -1.216758  -0.308074  -0.034658
		O   -1.681717  -0.917031  -0.974752
		C    0.053390   0.490234  -0.260871
		C    1.183723   0.056284   0.182081
		H   -1.724360  -0.326461   1.034760
		H    0.020372   1.400462  -0.865949
		H    1.213997  -0.877534   0.806590
		H    2.114183   0.494294   0.073478
*
