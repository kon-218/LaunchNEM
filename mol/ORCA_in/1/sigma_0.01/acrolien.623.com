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

# 	7450
* xyz 0 1
		C   -1.202610  -0.278683   0.038990
		O   -1.571199  -1.029266   0.937163
		C    0.040344   0.558704   0.207957
		C    1.233258   0.038311  -0.183120
		H   -1.735419  -0.216510  -0.962727
		H    0.009532   1.409611   0.767451
		H    1.104835  -1.069996  -0.617595
		H    2.074216   0.588435  -0.236944
*
