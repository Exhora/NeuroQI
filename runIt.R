#!/usr/bin/env Rscript

rm(list = ls())

library("cluster")
library("Hmisc")

require("igraph")

source('src/pv.R')
source('src/sc.R')
source('src/matFDR.R')

for (numClusters in 2:20) {
  print(paste(c("Running to ", numClusters, " clusters"), sep="", collapse=""))
  source("labels.R")
  source("silhueta.R")
  source("clusters.R")
  source("binariza.R")
  source("grafo.R")
}
