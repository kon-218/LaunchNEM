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

# 	871
* xyz 0 1
		C   -1.240074  -0.384563   0.009821
		O   -1.876029  -0.986617   0.788254
		C    0.013813   0.382068   0.322115
		C    1.252093   0.116214  -0.171415
		H   -1.385153  -0.380518  -1.054669
		H   -0.071399   1.231430   0.915126
		H    1.236038  -0.672393  -0.822921
		H    2.108756   0.649292  -0.051767
*
