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

# 	30049
* xyz 0 1
		C   -0.582954  -0.416085   0.045842
		O   -0.588810  -1.659899  -0.027382
		C    0.606797   0.396066  -0.031205
		C    1.863168  -0.089168   0.020857
		H   -1.514598   0.188839   0.225843
		H    0.407528   1.515087  -0.331329
		H    1.989529  -1.207562  -0.097921
		H    2.920346   0.418407   0.209615
*
