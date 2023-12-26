#PROBABILIDADE
#
#DISTRIBUIÇÃO EXPONENCIAL
#
#Associada a temppo
#
#
#A vida útil de uma lâmpada (em horas) é modelada através de distribuição
#ewxponencial com parâmetro 1/8000
#
#
#X: tempo de duração da lâmpada
#X~exp(1/8000)
#
#a) Calcule o tempo médio de duração dessas lâmpadas.

#b) Calcule a probabilidade de uma lâmpada dure pelo menos 4000 horas.

pexp(4000, rate=1/8000, lower.tail = FALSE, log.p=FALSE)

#c) Sabe-se que o fabricante garante a reposição de uma lâmpada caso ela dure 
#menos de 50 horas. Determine a probabilidade de haver troca por defeito na fabricação.
pexp(50, rate=1/8000, lower.tail=TRUE, log.p=FALSE)


#d) Uma lâmpada é colocada em teste. Calcule a probabilidade de que ela dure pelo menos 1000 horas,
#sabendo-se que ela já está em funcionamento a pelo menos 6000 horas.

#P(X>=1000|X>=6000) = P(X>=4000) = 0,6065 | diferença - probabilidade de falta de memória


#EXERCÍCIOS


#a) Qual é a probabilidade de uma pessoa espere em uma fila um tempo menor que a média de 5 minutos?

pexp(5, 0.2, lower.tail = TRUE)

#cálculo inverso da média
1/(1/5)

#b) Qual a probabilidade de uma pessoa espere de 4 a 6 minutos em uma fila até o atendimento?


lambda_param <- 0.2

probabilidade <- pexp(6, lambda_param,lower.tail = TRUE) - pexp(4, lambda_param,lower.tail = TRUE)
probabilidade

