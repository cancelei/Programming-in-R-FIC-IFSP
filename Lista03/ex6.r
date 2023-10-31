# Criar listas vazias para armazenar produtos e valores
produtos <- c()
valores <- c()

total <- 0

repeat {
  # Leia o nome do produto
  cat("Digite o nome do produto (ou 'sair' para terminar): ")
  produto <- readline()
  
  # Verifique se o usuário quer sair
  if (produto == "sair") {
    break
  }
  
  # Leia o valor do produto
  cat("Digite o valor para", produto, ": R$")
  valor <- as.numeric(readline())
  
  while (is.na(valor) || valor < 0) {
    cat("Por favor, digite um valor válido para", produto, ": R$")
    valor <- as.numeric(readline())
  }
  
  # Adicione o produto e o valor às listas e atualize o total
  produtos <- c(produtos, produto)
  valores <- c(valores, valor)
  total <- total + valor
}

# Exiba os produtos, seus valores e o valor total
cat("\nLista de Compras:\n")
for (i in 1:length(produtos)) {
  cat(produtos[i], ": R$", sprintf("%.2f", valores[i]), "\n")
}
cat("\nValor Total: R$", sprintf("%.2f", total), "\n")
