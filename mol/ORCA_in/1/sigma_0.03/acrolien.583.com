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

# 	30147
* xyz 0 1
		C   -0.607814  -0.438048   0.035614
		O   -0.560103  -1.594372  -0.016274
		C    0.653517   0.391645  -0.028154
		C    1.808345  -0.180040   0.017965
		H   -1.390400   0.215107  -0.025863
		H    0.456798   1.505777   0.017860
		H    2.089608  -0.976710   0.053033
		H    2.592102   0.555096  -0.094826
*