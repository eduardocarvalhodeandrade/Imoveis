library(ggplot2)

dados = read.csv("imoveis.csv", header = T, sep = ";")
attach(dados)

#Obrigatorios
hist(preco, breaks = 6, main = "Preço", xlab = "R$", col = "black")
ggplot(data = dados, aes(x = imposto_anual, y = metragem)) + geom_point() + geom_smooth(method = "lm", se = FALSE)

#Opcionais
mean(itens_embutidos)
sd(itens_embutidos)

mean(imposto_anual)
sd(imposto_anual)

ggplot(data = dados, aes(x = idade, y = metragem)) + geom_point() + geom_smooth(method = "lm", se = FALSE)
