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

# 	5972
* xyz 0 1
		C   -1.296051  -0.275889  -0.028465
		O   -1.813858  -0.845277  -0.859910
		C   -0.041833   0.485080  -0.269034
		C    1.172541   0.030968   0.107964
		H   -1.339742  -0.608225   0.999795
		H   -0.181119   1.355351  -0.925546
		H    1.249964  -0.930026   0.858987
		H    2.202555   0.710741   0.112992
*