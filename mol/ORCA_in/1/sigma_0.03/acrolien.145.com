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

# 	10067
* xyz 0 1
		C   -1.237111  -0.327557   0.021632
		O   -1.508678  -1.360837  -0.584844
		C    0.016016   0.498204  -0.153137
		C    1.232618   0.041775   0.159662
		H   -1.784073  -0.085806   1.042823
		H   -0.084109   1.477536  -0.874285
		H    1.225277  -0.932700   0.630534
		H    2.084572   0.663775  -0.168810
*