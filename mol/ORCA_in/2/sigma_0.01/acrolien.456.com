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

# 	28767
* xyz 0 1
		C   -0.561716  -0.363363  -0.013019
		O   -0.538967  -1.643483  -0.001972
		C    0.595790   0.432309  -0.019577
		C    1.819914  -0.162629   0.045972
		H   -1.566923  -0.056951   0.138314
		H    0.358754   1.580603   0.031512
		H    1.807777  -1.338103  -0.081757
		H    2.806357   0.262718  -0.227903
*
