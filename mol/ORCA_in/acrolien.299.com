! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	19105
* xyz 0 1
		C   -1.174788  -0.263307  -0.053925
		O   -1.301174  -1.409493  -0.509410
		C    0.013746   0.558845  -0.160137
		C    1.192587  -0.018564   0.114163
		H   -1.963617   0.280854   0.655831
		H   -0.171642   1.480334  -0.515284
		H    1.297400  -1.127635   0.369328
		H    2.183395   0.503088   0.034064
*
