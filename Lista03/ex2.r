args <- commandArgs(TRUE)

# Ensure two numbers are provided
if (length(args) != 2) {
    cat("Por favor, forneça dois números como argumentos.\n")
    quit("no", status = 1)  # Exit with error status
}

numero1 <- as.numeric(args[1])
numero2 <- as.numeric(args[2])

# Verifica se o segundo número é divisor do primeiro
if (numero2 == 0) {
    cat("O segundo número não pode ser zero, pois não podemos dividir por zero.\n")
} else if (numero1 %% numero2 == 0) {
    cat("O segundo número é um divisor do primeiro número.\n")
} else {
    cat("O segundo número não é um divisor do primeiro número.\n")
}
