# Criar listas vazias para armazenar nomes e médias
#testado

nomes <- c()
medias <- c()

repeat {
  # Leia o nome do aluno
  cat("Digite o nome do aluno (ou 'sair' para terminar): ")
  nome <- readline()
  
  # Verifique se o usuário quer sair
  if (nome == "sair") {
    break
  }
  
  # Leia as três notas
  cat("Digite a primeira nota para", nome, ": ")
  nota1 <- as.numeric(readline())
  while (is.na(nota1) || nota1 < 0 || nota1 > 10) {
    cat("Por favor, digite uma nota válida (0-10) para", nome, ": ")
    nota1 <- as.numeric(readline())
  }
  
  cat("Digite a segunda nota para", nome, ": ")
  nota2 <- as.numeric(readline())
  while (is.na(nota2) || nota2 < 0 || nota2 > 10) {
    cat("Por favor, digite uma nota válida (0-10) para", nome, ": ")
    nota2 <- as.numeric(readline())
  }
  
  cat("Digite a terceira nota para", nome, ": ")
  nota3 <- as.numeric(readline())
  while (is.na(nota3) || nota3 < 0 || nota3 > 10) {
    cat("Por favor, digite uma nota válida (0-10) para", nome, ": ")
    nota3 <- as.numeric(readline())
  }
  
  # Calcule a média das notas
  media <- (nota1 + nota2 + nota3) / 3
  
  # Adicione o nome e a média às listas
  nomes <- c(nomes, nome)
  medias <- c(medias, media)
}

# Exiba os nomes e médias
cat("\nNomes e médias dos alunos:\n")
for (i in 1:length(nomes)) {
  cat(nomes[i], ":", sprintf("%.2f", medias[i]), "\n")
}
