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

# 	12942
* xyz 0 1
		C   -1.186889  -0.295578   0.040600
		O   -1.271989  -1.439794   0.313983
		C    0.013588   0.513787   0.181315
		C    1.151698  -0.017006  -0.041009
		H   -2.152545   0.230243  -0.522552
		H   -0.120221   1.587916   0.310019
		H    1.469632  -1.128762  -0.257854
		H    2.158625   0.516337  -0.057206
*