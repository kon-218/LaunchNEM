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

# 	12528
* xyz 0 1
		C   -1.184612  -0.323483   0.048377
		O   -1.640381  -1.173280   0.675663
		C    0.013760   0.533691   0.218893
		C    1.192586   0.052460  -0.123610
		H   -1.749556  -0.194824  -0.979007
		H   -0.205205   1.490273   0.730680
		H    1.343861  -1.028221  -0.669601
		H    2.170934   0.636911   0.070836
*