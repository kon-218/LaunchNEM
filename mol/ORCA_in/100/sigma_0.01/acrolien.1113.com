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

# 	19899
* xyz 0 1
		C   -1.221275  -0.359486   0.012720
		O   -2.207900  -0.290464   0.595563
		C    0.058566   0.388542   0.377837
		C    1.183184   0.246811  -0.298443
		H   -1.157833  -1.124659  -0.885132
		H    0.083746   0.775368   1.409933
		H    1.151268  -0.248002  -1.239221
		H    2.125726   0.581447  -0.052955
*