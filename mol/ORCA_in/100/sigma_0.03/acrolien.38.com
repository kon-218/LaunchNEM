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

# 	24535
* xyz 0 1
		C   -0.587380  -0.436009  -0.016189
		O   -0.555042  -1.610072   0.005312
		C    0.634847   0.431874   0.058710
		C    1.819388  -0.157318   0.013408
		H   -1.578991   0.055595  -0.159585
		H    0.484738   1.521877  -0.209641
		H    1.929720  -1.395878  -0.203625
		H    2.711503   0.551949  -0.191702
*