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

# 	15997
* xyz 0 1
		C   -1.179255  -0.292516  -0.031437
		O   -2.125762  -0.285889  -0.948563
		C    0.019439   0.415346  -0.239561
		C    1.179828   0.044174   0.251419
		H   -1.207283  -1.011608   0.896346
		H    0.193301   1.127910  -1.175134
		H    0.976498  -0.742183   1.063317
		H    2.123387   0.714448   0.254791
*
