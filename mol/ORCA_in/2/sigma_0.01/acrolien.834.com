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

# 	13490
* xyz 0 1
		C   -1.163932  -0.316872   0.004107
		O   -1.581797  -1.111197  -0.887203
		C    0.046804   0.502284  -0.221648
		C    1.185258   0.005514   0.140198
		H   -1.739866  -0.154556   0.958910
		H   -0.104712   1.555636  -0.699857
		H    1.242130  -1.063969   0.591942
		H    2.144929   0.606335   0.105995
*
