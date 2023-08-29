# Faça um simulador de empréstimo. Os dados a serem inseridos pelo usuário são: 
# Nome, idade, renda mensal, valor desejado e número de parcelas. O empréstimo será 
# concedido nas seguintes situações:
# - Idade maior que 18;
# - Renda maior que 5000
# Os juros serão os seguintes:
# - 5% ao ano para renda mensal entre 5000 e 10000 e idade acima de 50
# - 6% ao ano para renda mensal entre 5000 e 10000 e idade entre 18 e 49 anos
# - 7% ao ano para renda mensal entre 10001 e 20000
# - 8% ao ano para os demais casos
# O programa deverá exibir ao usuário:
# - Se o empréstimo foi aprovado;
# - Caso não seja aprovado qual o motivo
# - O valor das parcelas mensais

# 1 – Solicitar que o usuário digite seu nome, idade, renda mensal, valor desejado e número de parcelas
nome = readline(prompt="Digite seu nome: ");
idade = as.numeric(readline(prompt="Digite sua idade: "));
renda = as.numeric(readline(prompt="Digite sua renda mensal: "));
valor = as.numeric(readline(prompt="Digite o valor desejado: "));
parcelas = as.numeric(readline(prompt="Digite o número de parcelas: "));
# 2 – Verificar se o empréstimo será concedido
# - Idade maior que 18;
# - Renda maior que 5000

if (idade > 18 & renda > 5000) {
    print("Empréstimo concedido");
} else {
    print("Empréstimo não concedido");
}

# 3 – Calcular o valor das parcelas
# Os juros serão os seguintes:
# - 5% ao ano para renda mensal entre 5000 e 10000 e idade acima de 50
# - 6% ao ano para renda mensal entre 5000 e 10000 e idade entre 18 e 49 anos
# - 7% ao ano para renda mensal entre 10001 e 20000
# - 8% ao ano para os demais casos

if (renda >= 5000 & renda < 10000 & idade > 50) {
    juros = 0.05;
} else if (renda > 5000 & renda < 10000 & idade > 18 & idade < 49) {
    juros = 0.06;
} else if (renda > 10001 & renda < 20000) {
    juros = 0.07;
} else {
    juros = 0.08;
}

# 4 – Exibir ao usuário:
# - Se o empréstimo foi aprovado;
# - Caso não seja aprovado qual o motivo
# - O valor das parcelas mensais (considere juros compostos)

if (idade > 18 & renda >= 5000) {
    print("Empréstimo concedido");
    parcela = valor * (1 + juros) ^ parcelas;
    print(paste("O valor da parcela é de", parcela));
} else {
    print("Empréstimo não concedido");
}
