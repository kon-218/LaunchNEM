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

# 	24631
* xyz 0 1
		C   -0.523199  -0.409020  -0.074447
		O   -0.577949  -1.643082   0.031249
		C    0.593845   0.461442   0.045824
		C    1.839108  -0.171717  -0.011076
		H   -1.438669   0.046698   0.090687
		H    0.470260   1.507325  -0.009953
		H    1.825042  -1.369604  -0.157029
		H    2.551993   0.552132   0.057781
*
