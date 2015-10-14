require("igraph")

grafo1 = list()
grafo2 = list()
grafo3 = list()
grafo4 = list()
grafo5 = list()

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





#calculo de centralidade do grafo
edge1 = NULL 
for(i in 1:length(grafo1)){
	edge1[[i]] = edge_density(grafo1[[i]])
}

edge2 = NULL 
for(i in 1:length(grafo2)){
	edge2[[i]] = edge_density(grafo2[[i]])
}

edge3 = NULL 
for(i in 1:length(grafo3)){
	edge3[[i]] = edge_density(grafo3[[i]])
}

edge4 = NULL 
for(i in 1:length(grafo4)){
	edge4[[i]] = edge_density(grafo4[[i]])
}

edge5 = NULL 
for(i in 1:length(grafo5)){
	edge5[[i]] = edge_density(grafo5[[i]])
}




