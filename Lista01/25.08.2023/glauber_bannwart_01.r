getidade <- as.numeric(readline(prompt="Digite sua idade: "));

if (getidade < 65) {
    print("Você não pode se aposentar");
    } else {
    print("Você pode se aposentar");
}

print(getidade - 65);
