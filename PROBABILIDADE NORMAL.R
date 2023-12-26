#PROBABILIDADE
#
#DISTRIBUIÇÃO NORMAL
#
#Aceita valores negativos, positivos, inteiros e decimal
#
#A Distribuição Normalconhecida também como Gaussiana é sem dúvidas as mais
#importante da distribuição contínua
#
#
#A Distribuição é simétrica em torno da média, assim, as medidas de tendência
#central (édia, mediana e moda) apresentam o mesmo valor
#
#A área sob a curva corresponde à 1
#
#
#Como saber se a probalilidade a ser usada é a Normal?
#
#a)Selecione a amostra, construir um histograma e verificar se a forma é simétrica
#não indicado por ser sucetível a erro
#
#b)Usar o gráfico quantil-quantil
#c)Teste de normalidade


#Função

x <- 5
media <- 4.5
desvio_padrao <- 0.82

#lower.tail=TRUE = média acumulada  até x | P(X<=x)
#lower.tail=FALSE = média acima de x      | P(X>x)


pnorm(x, media,desvio_padrao, lower.tail=TRUE)



