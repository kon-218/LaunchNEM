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

# 	5665
* xyz 0 1
		C   -1.195734  -0.346306  -0.011931
		O   -1.226008  -1.491652   0.283275
		C    0.052751   0.466954   0.022505
		C    1.227442  -0.071625  -0.146605
		H   -2.192236   0.166675  -0.137353
		H    0.059699   1.629604   0.135082
		H    1.344089  -1.127707  -0.019793
		H    1.920029   0.722962  -0.138717
*
