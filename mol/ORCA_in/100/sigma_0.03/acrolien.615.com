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

# 	32003
* xyz 0 1
		C   -0.629521  -0.450433  -0.018496
		O   -0.572253  -1.648400   0.002836
		C    0.671737   0.406494  -0.000075
		C    1.861432  -0.109688   0.061886
		H   -1.671379   0.408010   0.015631
		H    0.454003   1.377214  -0.003151
		H    1.881610  -1.056662  -0.226038
		H    2.663807   0.541084  -0.364165
*
