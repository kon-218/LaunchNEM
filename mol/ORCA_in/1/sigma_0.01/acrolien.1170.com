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

# 	15075
* xyz 0 1
		C   -1.168874  -0.345090   0.120388
		O   -2.070054  -0.359605   0.829226
		C    0.031494   0.498446   0.308850
		C    1.162148   0.113154  -0.292615
		H   -1.239859  -1.145566  -0.881601
		H   -0.029223   1.374159   1.017755
		H    1.252130  -0.760458  -0.976194
		H    2.118773   0.658189  -0.182207
*
