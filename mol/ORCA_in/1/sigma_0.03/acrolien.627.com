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

# 	801
* xyz 0 1
		C   -1.229655  -0.276715  -0.047540
		O   -1.214189  -1.501273   0.153405
		C    0.034032   0.533082   0.067337
		C    1.270943   0.022767  -0.035940
		H   -2.307385   0.026517  -0.172354
		H   -0.040758   1.533398   0.104149
		H    1.357420  -1.092130  -0.087924
		H    2.129363   0.757430   0.065104
*
