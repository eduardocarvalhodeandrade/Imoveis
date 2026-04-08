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

#insira Gráficos aqui.

#3- Medidas

MediaImpostAnual = mean(ImoveisLimpos$imposto_anual)
MedianaImpostAnual = median(ImoveisLimpos$imposto_anual)
DesvioImpostoAnual = sd(ImoveisLimpos$imposto_anual)