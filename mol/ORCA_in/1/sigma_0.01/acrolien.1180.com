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

# 	13724
* xyz 0 1
		C   -1.201224  -0.348524   0.027183
		O   -1.271935  -1.552462  -0.246332
		C   -0.004899   0.516626  -0.054520
		C    1.205277  -0.001873   0.066426
		H   -2.209563   0.439487   0.277139
		H   -0.073649   1.510849  -0.068447
		H    1.266986  -1.017612   0.171400
		H    2.189152   0.486670  -0.145279
*
