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

# 	8176
* xyz 0 1
		C   -1.153073  -0.263227   0.171185
		O   -1.961403  -0.518892   0.917012
		C    0.076847   0.490802   0.278627
		C    1.215084   0.037428  -0.205337
		H   -1.294965  -0.856543  -0.832542
		H   -0.079035   1.200581   0.966977
		H    1.204691  -0.904824  -0.977692
		H    2.040358   0.797138  -0.265005
*
