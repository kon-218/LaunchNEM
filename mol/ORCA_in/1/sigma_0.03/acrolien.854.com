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

# 	6778
* xyz 0 1
		C   -1.198057  -0.365087   0.137065
		O   -2.139053  -0.440777   0.783889
		C    0.094881   0.290017   0.458366
		C    1.211615   0.126851  -0.286153
		H   -1.153131  -0.751701  -0.959520
		H   -0.117704   1.005461   1.164210
		H    1.054543  -0.678365  -1.073142
		H    2.178429   0.806035  -0.185448
*