dados = array(dim=c(length(pos), 316, 316))

# passa todos os individuos para p-valor e corrige por FDR
for (i in 1:length(pos)) {
	dados[i,,] = matFDR(z2p(dataset[pos[i],,]))
}

sils[[numClusters]] = array(dim=c(length(pos), 316))

# calcula a silhueta para cada individuo de todos os clusters
for (i in 1:length(pos)) {
	sils[[numClusters]][i,] =  silhouette(labels, dmatrix = dados[i,,])[,3]
}
