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

# 	29323
* xyz 0 1
		C   -0.579547  -0.411018  -0.002462
		O   -0.556137  -1.623996   0.011868
		C    0.592865   0.391307   0.004522
		C    1.854993  -0.120583  -0.014450
		H   -1.476891   0.198744  -0.158962
		H    0.405537   1.524201   0.116034
		H    1.839039  -1.464158  -0.053562
		H    2.748206   0.451434   0.067660
*
