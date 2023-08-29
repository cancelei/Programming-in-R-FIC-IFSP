# 2 – Solicitar que o usuário digite um ano. Calcular se o ano é bissexto e repetir a pergunta
# caso o usuário digite um ano menor que 1582 ou maior que 2023

getano = as.numeric(readline(prompt="Digite um ano: "));

if (getano < 1582 | getano > 2023) {
    print("Digite um ano entre 1582 e 2023");
    getano = as.numeric(readline(prompt="Digite um ano: "));
} else {
    if (getano %% 4 == 0) {
        if (getano %% 100 == 0) {
            if (getano %% 400 == 0) {
                print("O ano é bissexto");
            } else {
                print("O ano não é bissexto");
            }
        } else {
            print("O ano é bissexto");
        }
    } else {
        print("O ano não é bissexto");
    }
}