# 7 – Faça um programa que exiba os números primos até 1000

numeros = 1:1000;
primos = c();

for (i in numeros) {
    divisores = 0;
    for (j in 1:i) {
        if (i %% j == 0) {
            divisores = divisores + 1;
        }
    }
    if (divisores == 2) {
        primos = c(primos, i);
    }
}

print(primos);