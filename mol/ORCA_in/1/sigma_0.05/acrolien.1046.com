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

# 	27356
* xyz 0 1
		C   -0.611993  -0.477322   0.000545
		O   -0.626262  -1.636726  -0.016393
		C    0.693536   0.367969  -0.002428
		C    1.868094  -0.058822  -0.005943
		H   -1.517229   0.190243   0.233677
		H    0.568043   1.446612  -0.107212
		H    2.013856  -1.064045   0.246309
		H    2.622757   0.656882  -0.032907
*