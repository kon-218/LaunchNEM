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

# 	11381
* xyz 0 1
		C   -1.219214  -0.329414   0.011559
		O   -1.176668  -1.489781   0.204025
		C    0.044999   0.494671   0.061356
		C    1.249269   0.025273   0.010218
		H   -2.134993   0.185139  -0.181912
		H   -0.001184   1.662693   0.113840
		H    1.232367  -1.007219  -0.217161
		H    2.112235   0.513713   0.003253
*
