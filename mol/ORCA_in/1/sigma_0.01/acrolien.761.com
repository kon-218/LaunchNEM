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

# 	16879
* xyz 0 1
		C   -1.154915  -0.455539  -0.138078
		O   -2.218010  -0.368260  -0.738221
		C   -0.055510   0.383560  -0.315803
		C    1.145152   0.114618   0.409771
		H   -0.947784  -0.895150   0.764436
		H   -0.004056   1.112671  -1.316779
		H    1.135223  -0.720612   0.982411
		H    2.049645   0.718063   0.343544
*
