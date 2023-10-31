# R Script para Atividade 01

# Variável de texto
nome <- "João"

# Variável numérica
idade <- 25

# Variável lógica
é_estudante <- TRUE

# Vetor de personagens
livros_favoritos <- c("Dom Casmurro", "Memórias Póstumas de Brás Cubas", "A Moreninha")

# Lista contendo tipos mistos
perfil <- list(nome_completo = "João da Silva", é_casado = FALSE, quantidade_de_filhos = 1)

# Variável fatorial
preferencia_cor <- factor(c("vermelho", "azul", "verde"), levels = c("vermelho", "azul", "verde", "amarelo"))

# Exibindo as variáveis
cat("Nome:", nome, "\n")
cat("Idade:", idade, "\n")
cat("É estudante?", é_estudante, "\n")
cat("Livros favoritos:", paste(livros_favoritos, collapse = ", "), "\n")
cat("Detalhes do perfil:\n")
cat("  Nome completo:", perfil$nome_completo, "\n")
cat("  É casado?", perfil$é_casado, "\n")
cat("  Quantidade de filhos:", perfil$quantidade_de_filhos, "\n")
cat("Preferência de cor:", levels(preferencia_cor), "\n")
