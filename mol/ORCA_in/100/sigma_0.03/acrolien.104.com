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

# 	13416
* xyz 0 1
		C   -1.200901  -0.395697  -0.193091
		O   -1.983539  -0.669656  -1.038029
		C    0.058076   0.345708  -0.295444
		C    1.184064   0.126353   0.323212
		H   -1.464213  -0.616520   0.999344
		H    0.087094   1.305878  -0.996052
		H    1.280175  -0.700313   1.062485
		H    2.049958   0.605737   0.087552
*
