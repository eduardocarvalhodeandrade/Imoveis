#Script esqueleto.
#1-Leitura do banco de dados
Imoveis = read.csv("imoveis.csv", header=T, sep=";")
str(Imoveis)
head(Imoveis)
#Existe uma linha em que o Preço da Imovel é menor do que o imposto anual, interpreto isso como um erro, então vou remover.
Imoveis$preco[Imoveis$preco < Imoveis$imposto_anual] = NA
Imoveis$imposto_anual[Imoveis$preco < Imoveis$imposto_anual] = NA
ImoveisLimpos = na.omit(Imoveis)
#2- Gráficos

hist(ImoveisLimpos$metragem, xlab = "Metros", ylab = "Frequência", breaks = 6, main = "Frequência da Metragem dos Imoveis", col = "red")

#3- Medidas

#insira Medidas aqui.

