! B3LYP cc-pVDZ
!TightSCF
%scf
 ConvForced true
 convergence tight
 MaxIter 500
end
 
%tddft 
 nroots 1
end

# 	32177
* xyz 0 1
		C   -0.653478  -0.422840  -0.085358
		O   -0.537413  -1.575679   0.039875
		C    0.626530   0.342924   0.056626
		C    1.855340  -0.116337  -0.016238
		H   -1.681891   0.185938  -0.058388
		H    0.282406   1.406669   0.156492
		H    2.187747  -1.267570  -0.095069
		H    2.838282   0.331352  -0.095249
*
