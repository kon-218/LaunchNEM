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

# 	22937
* xyz 0 1
		C   -0.602701  -0.425993  -0.025143
		O   -0.569091  -1.613837   0.008228
		C    0.620428   0.388723   0.025600
		C    1.852968  -0.122633  -0.011817
		H   -1.494370   0.061542   0.040999
		H    0.459891   1.461050  -0.060190
		H    1.918573  -1.324445  -0.013150
		H    2.813319   0.568070   0.036334
*