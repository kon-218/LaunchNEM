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

# 	950
* xyz 0 1
		C   -1.163095  -0.261837  -0.035908
		O   -1.670232  -0.977412  -0.915645
		C    0.022881   0.517460  -0.210480
		C    1.188590   0.010035   0.206705
		H   -1.704293  -0.347835   1.075009
		H    0.003155   1.211990  -0.978012
		H    1.188152  -0.802761   0.845742
		H    2.121887   0.624476   0.004089
*