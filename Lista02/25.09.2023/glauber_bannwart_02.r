# Campo Minado Jogo

# Set the seed for reproducibility
set.seed(123)

# Create a vector with 10 unique random numbers between 1 and 99
minefield <- sample(1:99, 10)

# Initialize the game variables
player_lost <- FALSE
interval_start <- 1
interval_end <- 5

# Game loop
while (!player_lost && interval_end <= 100) {
  # Prompt the user to enter a number in the current interval
  cat(sprintf("Digite um número entre %d e %d: ", interval_start, interval_end))
  player_input <- as.integer(readline())
  
  # Validate the input
  if (is.na(player_input) || player_input < interval_start || player_input > interval_end) {
    cat("Número inválido! Por favor, digite um número válido no intervalo correto.\n")
    next
  }
  
  # Check if the entered number is in the minefield
  if (player_input %in% minefield) {
    cat("Você perdeu!\n")
    player_lost <- TRUE
  } else {
    # Update the interval for the next round
    interval_start <- interval_start + 5
    interval_end <- interval_end + 5
  }
}

# Check if the player completed the game without hitting a mine
if (!player_lost) cat("Parabéns! Você venceu!\n")
