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

# 	5253
* xyz 0 1
		C   -1.219865  -0.338540  -0.032371
		O   -1.732948  -0.945343  -0.910489
		C    0.029582   0.454976  -0.245381
		C    1.172416   0.069768   0.208309
		H   -1.599829  -0.322206   1.041428
		H   -0.021459   1.251570  -0.843991
		H    1.319763  -0.819594   0.712545
		H    2.085724   0.681121  -0.051161
*