# JOGO DA VELHA 2 JOGADORES 3X3


TAMANHO <- 3
VAZIO <- 0
JOGADOR1 <- 1
JOGADOR2 <- 2

# Initialize the board
tabuleiro <- matrix(VAZIO, nrow = TAMANHO, ncol = TAMANHO)
jogador <- JOGADOR1
jogadas <- 0
venceu <- FALSE

# Read player names
cat("Nome do jogador 1: ")
nome1 <- scan(file = "stdin", n = 1, what = character())
cat("Nome do jogador 2: ")
nome2 <- scan(file = "stdin", n = 1, what = character())

# Function to check for a winner
check_winner <- function(board, player) {
  # Check rows, columns, and diagonals
  for (i in 1:TAMANHO) {
    if (all(board[i, ] == player) || all(board[, i] == player)) return(TRUE)
  }
  if (all(diag(board) == player) || all(diag(board[ ,ncol(board):1]) == player)) return(TRUE)
  return(FALSE)
}

# Game loop
while (!venceu && jogadas < TAMANHO * TAMANHO) {
  # Display the board
  for (linha in 1:TAMANHO) {
    for (coluna in 1:TAMANHO) {
      cat(ifelse(tabuleiro[linha, coluna] == VAZIO, " ", 
                 ifelse(tabuleiro[linha, coluna] == JOGADOR1, "X", "O")), " ")
      if (coluna < TAMANHO) cat("| ")
    }
    cat("\n")
    if (linha < TAMANHO) cat("---------\n")
  }
  
  # Read the move
repeat {
  cat("Jogador ", ifelse(jogador == JOGADOR1, nome1, nome2), ": ")
  jogada <- scan(file = "stdin", n = 2, what = integer(), quiet = TRUE)
  
  if (length(jogada) < 2) {
    cat("Please enter both row and column, separated by a space.\n")
    next
  }
  
  linha <- jogada[1]
  coluna <- jogada[2]
  
  if (linha < 1 || linha > TAMANHO || coluna < 1 || coluna > TAMANHO || tabuleiro[linha, coluna] != VAZIO) {
    cat("Jogada inválida! Please enter valid row and column.\n")
  } else {
    break
  }
}

  # Validate the move
  if (linha < 1 || linha > TAMANHO || coluna < 1 || coluna > TAMANHO || tabuleiro[linha, coluna] != VAZIO) {
    cat("Jogada inválida!\n")
  } else {
    # Make the move
    tabuleiro[linha, coluna] <- jogador
    jogadas <- jogadas + 1
    
    # Check for a winner
    venceu <- check_winner(tabuleiro, jogador)
    
    # Switch player
    if (!venceu) jogador <- ifelse(jogador == JOGADOR1, JOGADOR2, JOGADOR1)
  }
}

# Display the result
if (venceu) {
  cat("Jogador ", ifelse(jogador == JOGADOR1, nome1, nome2), " venceu!\n")
} else {
  cat("Deu velha!\n")
}
