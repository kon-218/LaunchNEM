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

# 	16239
* xyz 0 1
		C   -1.168304  -0.352148  -0.034835
		O   -2.162780  -0.286037  -0.751994
		C    0.101646   0.369050  -0.438827
		C    1.161997   0.118700   0.314151
		H   -1.027400  -1.096857   0.721792
		H   -0.021986   1.204060  -1.058400
		H    1.317206  -0.637288   1.087277
		H    1.853678   0.689388   0.099614
*
