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

# 	18128
* xyz 0 1
		C   -1.187372  -0.282941  -0.018869
		O   -1.620041  -1.053898  -0.803693
		C    0.050517   0.536360  -0.232375
		C    1.167874   0.007292   0.106536
		H   -1.627659  -0.278051   1.034796
		H    0.000661   1.399748  -0.792917
		H    1.124299  -1.018529   0.690034
		H    2.126820   0.623813   0.050577
*
