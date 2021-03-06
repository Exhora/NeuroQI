graphEdges = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphAuthority = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphCoreness = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphMotifs = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphTriangles = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphEigenMedia = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphBetweenness = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphHub = array(dim = c(numClusters,length(grafosGroup[[1]])))
graphDegree = array(dim = c(numClusters,length(grafosGroup[[1]])))
for (i in 1:numClusters) {
	i = 3
	for (j in 1:length(grafosGroup[[i]])) {
		graphAuthority[i, j] = authority_score(grafosGroup[[i]][[j]])$value
		graphCoreness[i, j] = mean(coreness(grafosGroup[[i]][[j]]))
		graphMotifs[i, j] = count_motifs(grafosGroup[[i]][[j]], size = 3)
		graphTriangles[i, j] = mean(count_triangles(grafosGroup[[i]][[j]]))
		graphEigenMedia[i, j] = eigen_centrality(grafosGroup[[i]][[j]], directed = FALSE)$value
		graphEdges[i, j] = gsize(grafosGroup[[i]][[j]])
		graphBetweenness[i, j] = mean(betweenness(grafosGroup[[i]][[j]]))
		graphHub[i, j] = hub_score(grafosGroup[[i]][[j]])$value
		graphDegree[i, j] = max(degree(grafosGroup[[i]][[j]]))
	}
}


