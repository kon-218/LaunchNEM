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

# 	4529
* xyz 0 1
		C   -1.189360  -0.340696   0.011289
		O   -1.427971  -1.261662   0.666606
		C    0.077675   0.491378   0.213428
		C    1.205654   0.042338  -0.168473
		H   -1.922284   0.016517  -0.747891
		H   -0.223691   1.445979   0.551042
		H    1.340879  -1.047281  -0.520335
		H    2.146900   0.660498  -0.049417
*
