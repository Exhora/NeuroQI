# Este exemplo mostra como gerar labels para as ROIs
# Ou seja, como clusterizar as ROIs por clusterização espectral em um número definido de clusters

#-----------------------------------------------------------------#

rm(list = ls())

library("cluster")
library("Hmisc")

source('src/pv.R')
source('src/sc.R')
source('src/matFDR.R')

#-----------------------------------------------------------------#

#usando o arquivo sem scrubbing
load('zv_sfnwmrda_cc400_tc100_SITEdxGroup_spCorr.RData')
load('phenotypeComplete.RData')

# Rede media dos controles (dxGroup == 1)
# se voce quisesse poderia gerar para apenas uma pessoa, para apenas os controles, etc.
# A rede media está sendo corrigida por fdr (matFDR) após transformação para pvalor (z2p)
pos = which(phenotype$DX_GROUP == 2 & phenotype$FIQ > 0  & phenotype$VIQ > 0 & phenotypePIQ > 0)

#Calcula  média e transforma em p-valor
media = matFDR(z2p(colMeans(dataset[pos, , ])))

#quanto menor o p-valor, mais similar e quanto maior, menos similar. Eh uma medida de dissimilaridade
#a clusterizacao precisa de uma medida de similaridade, entao passamos 1-(p-valor)
labels = specClust(1 - media, 5)

save(labels, file = 'labelsSemScrubbing_5clusters.RData')

