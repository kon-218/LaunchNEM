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

# 	987
* xyz 0 1
		C   -1.232026  -0.249894   0.093345
		O   -1.484594  -1.166330  -0.642445
		C    0.022582   0.550451  -0.197843
		C    1.174721   0.053743   0.145191
		H   -1.890404  -0.084688   0.876139
		H   -0.191696   1.424486  -0.715880
		H    1.268649  -0.912418   0.443029
		H    2.307583   0.421299  -0.069046
*
