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

# 	18945
* xyz 0 1
		C   -1.230980  -0.353592   0.028539
		O   -1.507828  -1.360714   0.612031
		C   -0.016458   0.452023   0.187681
		C    1.222938   0.055688  -0.103976
		H   -1.804148   0.022105  -0.850462
		H   -0.135972   1.468325   0.485922
		H    1.429234  -0.979713  -0.375449
		H    2.091423   0.717173   0.020649
*
