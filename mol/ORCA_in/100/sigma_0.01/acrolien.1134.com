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

# 	16046
* xyz 0 1
		C   -1.154411  -0.362300  -0.022103
		O   -1.284384  -1.488382  -0.369983
		C    0.032601   0.564194  -0.092495
		C    1.327277   0.022205   0.108207
		H   -2.108570   0.107871   0.369200
		H   -0.136548   1.497790  -0.178557
		H    1.222462  -1.054029   0.294690
		H    2.134814   0.713490  -0.059365
*