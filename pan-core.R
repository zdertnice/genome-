#! /path/to/Rscript
# R CMD BATCH --args file.R
pdf(file="pan-core_genome.pdf")
the.data <- read.csv("core_pan.csv", header = TRUE)
x <- the.data$ClusterConservation
y <- the.data$PanGenome
y2 <- the.data$CoreGenome
plot(x, y, main = "Pan and Core genome", xlab = "Numbers of genomes", ylab = "Number of groups of orthologs",xlim=c(1,40),ylim=c(1500,8400), pch=5, col="red",cex=0.1)
points(x, y2, pch=5, col="blue",cex=0.1)
curve(1771.28724340568 *exp(-0.05 * x) + 1887.12248097918, add = TRUE, xlim=c(1,40),ylim=c(1500,8400))
curve(730.719947249673 *x**0.531 + 3225.68028195109, add = TRUE, xlim=c(1,40))
dev.off() 
