#carrega o arquivo de dados sem scrubbing
load('zv_sfnwmrda_cc400_tc100_SITEdxGroup_spCorr.RData')
#carrega o arquivo de fenotipos
load('phenotypeComplete.RData')

#transforma em tipo de grafo
grafo = list()
for(i in seq(dim(dataset)[1])){
	grafo[[i]] = graph.adjacency(dataset[i,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
}

#calcula o numero de arestas médio
arestas = NULL
for(i in 1:length(grafo)){
	arestas[i] = edge_density(grafo[[i]], loops=FALSE)
}
#plot densidade de arestas vs QI
plot(arestas, phenotype$FIQ)

