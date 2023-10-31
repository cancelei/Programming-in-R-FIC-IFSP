# Faça um script em R que funcione como um programa contínuo, ou seja, que o usuário tenha a opção de continuar executando até que deseje parar.
# Testado

repeat {
  cat("Digite um número: ")
  input <- readline()
  
  # Verifica se a entrada é um número
  if (!grepl("^[0-9.]+$", input)) {
    cat("Por favor, digite um número válido.\n")
    next
  }
  
  num <- as.numeric(input)
  cat("O número digitado foi:", num, "\n")
  
  cat("Deseja continuar? (s/n) ")
  resp <- readline()
  
  if (resp == "n") {
    break
  }
}
