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

# 	22492
* xyz 0 1
		C   -0.623134  -0.445149   0.051136
		O   -0.612076  -1.664218  -0.025192
		C    0.670174   0.391072  -0.001989
		C    1.873772  -0.064933  -0.004507
		H   -1.481671   0.226699  -0.071839
		H    0.486296   1.331270  -0.171062
		H    1.983374  -1.033650   0.106183
		H    2.778557   0.558253  -0.003958
*
