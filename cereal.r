y = read.table(file.choose("Cereal.DAT.txt"))
y$V1<-NULL
y$V2 <- NULL
 y$V11 <- NULL
 hc.single=hclust(dist(y), method="single")
 hc.average=hclust(dist(y), method="average")
 hc.complete=hclust(dist(y), method="complete")
 par(mfrow=c(1,3))
 plot(hc.single , main=" Single Linkage ", xlab="", sub ="",cex =.9)
 plot(hc.average , main=" Average Linkage ", xlab="", sub ="", cex =.9)
 plot(hc.complete , main=" Complete Linkage ", xlab="", sub ="", cex =.9)
 km.out=kmeans(y,3,algorithm=c("Lloyd"))
 plot(y,col = km.out$cluster)
 
 cutree(hc.complete, 3)
 
 cutree(hc.single, 3)
 
 cutree(hc.average, 3)
 
 km.out
