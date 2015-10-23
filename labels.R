rm(list = ls())

library("cluster")
library("Hmisc")

source('src/pv.R')
source('src/sc.R')
source('src/matFDR.R')

#-----------------------------------------------------------------#

#usando o arquivo sem scrubbing
load('zv_pm_cc400_tc100_SITEdxGroup_spCorr_tcOk.RData')
load("phenotypeComplete.RData")

# Rede media dos controles (dxGroup == 1)
# se voce quisesse poderia gerar para apenas uma pessoa, para apenas os controles, etc.
# A rede media está sendo corrigida por fdr (matFDR) após transformação para pvalor (z2p)
pos = which(phenotype$DX_GROUP == 2 & phenotype$FIQ > 0  & phenotype$VIQ > 0 & phenotype$PIQ > 0)
media = matFDR(z2p(colMeans(dataset[pos, , ])))

labels = specClust(1 - media, 5)

save(labels, file = 'labelsComScrubbing_5clusters.RData')
