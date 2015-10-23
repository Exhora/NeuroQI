require("igraph")

grafo1 = list()
grafo2 = list()
grafo3 = list()
grafo4 = list()
grafo5 = list()
grafo6 = list()

for(i in seq(dim(cluster1)[1])){
	grafo1[[i]] = graph.adjacency(cluster1[i,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
}

for(i in seq(dim(cluster1)[1])){
	grafo2[[i]] = graph.adjacency(cluster2[i,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
}

for(i in seq(dim(cluster1)[1])){
	grafo3[[i]] = graph.adjacency(cluster3[i,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
}

for(i in seq(dim(cluster1)[1])){
	grafo4[[i]] = graph.adjacency(cluster4[i,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
}

for(i in seq(dim(cluster1)[1])){
	grafo5[[i]] = graph.adjacency(cluster5[i,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
}
#for(i in seq(dim(cluster1)[1])){
#	grafo6[[i]] = graph.adjacency(cluster5[i,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
#}


