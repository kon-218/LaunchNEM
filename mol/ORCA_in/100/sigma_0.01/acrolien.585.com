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

# 	10064
* xyz 0 1
		C   -1.191296  -0.346193   0.047204
		O   -1.368430  -1.502232  -0.435118
		C    0.028006   0.514337  -0.125542
		C    1.250365   0.029507   0.100683
		H   -1.960696   0.088730   0.808263
		H   -0.101246   1.550908  -0.708395
		H    1.296840  -1.025495   0.427682
		H    2.056152   0.675668  -0.159800
*
