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

# 	28823
* xyz 0 1
		C   -0.621936  -0.485345   0.001642
		O   -0.569003  -1.609637  -0.005873
		C    0.628842   0.426039  -0.015259
		C    1.877302  -0.122171   0.010176
		H   -1.679994   0.225491   0.115319
		H    0.428661   1.493157  -0.005520
		H    1.967059  -1.168607   0.043925
		H    2.791109   0.425014  -0.023439
*
