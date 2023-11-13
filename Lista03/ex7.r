# Crie uma matriz de ordem 50x50, com elementos de 1 à 2500 preenchidos por linha. Atribua nomes às linhas (l_1 à l_50) e colunas (c_1 à c_50) da matriz. 

matriz <- matrix(1:2500, nrow = 50, ncol = 50, byrow = TRUE);

rownames(matriz) <- paste("l", 1:50, sep="_")
colnames(matriz) <- paste("c", 1:50, sep="_")


# vizualizar parte superior da matriz 
head(matriz)