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

# 	16394
* xyz 0 1
		C   -1.163314  -0.363186  -0.105430
		O   -1.971655  -0.723033  -0.947822
		C   -0.003203   0.409115  -0.284292
		C    1.239913   0.087603   0.195450
		H   -1.315443  -0.684317   1.097181
		H   -0.004824   1.242838  -1.008232
		H    1.195937  -0.717267   0.950808
		H    1.999335   0.650356   0.107506
*
