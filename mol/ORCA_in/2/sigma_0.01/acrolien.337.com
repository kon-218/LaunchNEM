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

# 	3376
* xyz 0 1
		C   -1.258138  -0.343538  -0.022454
		O   -2.076388  -0.636074  -0.757872
		C   -0.073607   0.480412  -0.250838
		C    1.176196   0.023789   0.187803
		H   -1.101162  -0.607661   0.770351
		H   -0.235825   1.288640  -0.926152
		H    1.322032  -0.857766   0.805425
		H    2.232369   0.584247   0.143366
*