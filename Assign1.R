
setwd(getwd())
matrix_1 <- read.delim("matrix1.txt")
matrix_1 <- data.frame(matrix_1, row.names = 1)
matrix_1 <- matrix_1[,-13]
install.packages('ggpubr')
library(ggpubr)
matrix1 <- cor(matrix_1,method=("pearson")) 
heatmap(matrix1)

matrix_2 <- read.delim("matrix2.txt")
matrix_2 <- data.frame(matrix_2, row.names = 1)
matrix_2 <- matrix_2[,-13]
matrix2 <- cor(matrix_2,method=("pearson")) 
heatmap(matrix2)
final_matrix <- cor(matrix_1, matrix_2, method=("pearson"))
heatmap(final_matrix)
                     
