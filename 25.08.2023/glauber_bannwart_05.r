# Solicite ao usuário a entrada de um número e mostre a tabuada desse número. O 
# número digitado pelo usuário deve estar entre 2 e 20

# getnumero = as.numeric(readline(prompt="Digite um número: "));
# if (getnumero < 2 | getnumero > 20) {
#     print("Digite um número entre 2 e 20");
#     getnumero = as.numeric(readline(prompt="Digite um número: "));
# } else {
#     for (i in 1:10) {
#         print(paste(getnumero, "x", i, "=", getnumero * i));
#     }
# }

# Using vector

getnumero = as.numeric(readline(prompt="Digite um número: "));
if (getnumero < 2 | getnumero > 20) {
    print("Digite um número entre 2 e 20");
    getnumero = as.numeric(readline(prompt="Digite um número: "));
} else {
    tabuada = c();
    for (i in 1:10) {
        tabuada = c(tabuada, paste(getnumero, "x", i, "=", getnumero * i));
    }
    print(tabuada);
}
