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

# 	29909
* xyz 0 1
		C   -0.577519  -0.455668  -0.050513
		O   -0.631646  -1.656483   0.039368
		C    0.628390   0.412721  -0.023796
		C    1.905727  -0.082797  -0.021321
		H   -1.465627   0.117959  -0.007601
		H    0.543739   1.327557   0.411844
		H    1.935749  -1.039479  -0.093812
		H    2.650363   0.603694   0.236825
*
