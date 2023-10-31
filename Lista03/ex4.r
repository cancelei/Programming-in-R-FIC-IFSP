#testado
# Crie uma lista vazia para armazenar os nomes e números
nomes <- c()
numeros <- c()

repeat {
  # Leia o nome
  cat("Digite um nome (ou 'sair' para terminar): ")
  nome <- readline()
  
  # Verifique se o usuário quer sair
  if (nome == "sair") {
    break
  }
  
  # Leia o número
  cat("Digite um número para", nome, ": ")
  numero <- as.numeric(readline())
  
  # Verifique se a entrada é um número válido
  while (is.na(numero)) {
    cat("Por favor, digite um número válido para", nome, ": ")
    numero <- as.numeric(readline())
  }
  
  # Adicione o nome e o número às listas
  nomes <- c(nomes, nome)
  numeros <- c(numeros, numero)
}

# Exiba os nomes e números
cat("\nNomes e números:\n")
for (i in 1:length(nomes)) {
  cat(nomes[i], ":", numeros[i], "\n")
}
