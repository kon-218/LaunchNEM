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

# 	31634
* xyz 0 1
		C   -0.603153  -0.419768  -0.099001
		O   -0.588568  -1.655309   0.049769
		C    0.603988   0.419656   0.062269
		C    1.901676  -0.120446  -0.003274
		H   -1.436213   0.165129  -0.012968
		H    0.325177   1.501814   0.037048
		H    2.073441  -1.137854  -0.371997
		H    2.640998   0.457108   0.045491
*
