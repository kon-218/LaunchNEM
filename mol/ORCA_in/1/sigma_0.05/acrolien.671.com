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

# 	22730
* xyz 0 1
		C   -0.552197  -0.478823  -0.043706
		O   -0.655952  -1.688255   0.015178
		C    0.669997   0.435108   0.045873
		C    1.873697  -0.039458   0.012830
		H   -1.577837   0.187480   0.031423
		H    0.505271   1.442097  -0.163593
		H    2.018668  -1.153264  -0.229492
		H    2.725153   0.549618  -0.065153
*