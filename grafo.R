grafosGroup = list()
for (i in 1:numClusters) {
	grafosGroup[[i]] = list()
	if (dim(clustersGroup[[i]])[2] < 2) {
		print(paste(c("graph.adjacency need 2x2 or more, but cluster at index ", i, " has ", dim(clustersGroup[[i]])[2], "x", dim(clustersGroup[[i]])[3], " skiped"), sep="", collapse=""))
		grafosGroup[[i]][[j]] = list()
	} else {
		for (j in seq(dim(clustersGroup[[i]])[1])) {
			grafosGroup[[i]][[j]] = graph.adjacency(clustersGroup[[i]][j,,], mode=c("upper"), weighted=TRUE, diag=TRUE)
		}
	}
}
