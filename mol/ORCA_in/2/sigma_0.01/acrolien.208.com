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

# 	23575
* xyz 0 1
		C   -0.606000  -0.432458   0.006597
		O   -0.570048  -1.670299  -0.004193
		C    0.616483   0.487472   0.013491
		C    1.851029  -0.138595  -0.022983
		H   -1.507268  -0.036609  -0.065869
		H    0.635559   1.554111   0.012864
		H    1.905387  -1.175526   0.169458
		H    2.815046   0.388620  -0.017333
*
