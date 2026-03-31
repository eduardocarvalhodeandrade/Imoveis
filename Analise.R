dados = read.csv("imoveis.csv", header = T, sep = ";")
attach(dados)

hist(preco, breaks = 6, main = "Preço", xlab = "R$", col = "black")
