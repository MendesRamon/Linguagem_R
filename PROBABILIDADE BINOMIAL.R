# ESTATÍSTICA NO R
#
# PROBABILIDADE - DISTRIBUIÇÃO BINOMIAL
#
#A Distribuição Binomial é uma distribuição para variável discreta, ou seja,
#para variáveis que são contadas. Só assumem valores inteiros e positivos.
#
#Enunciado:
#
#Uma caixa com 12 unidades de ovos possui a probabilidade de 5%
#de um dos ovos ser quebrado em 3 situações:
#Enquanto é manuseado, no transporte e nas gôndolas do mercado.

#EXERCÍCIO
  
  
#### IGUAL A
  
#Uma caixa com 12  ovos é selecionada aleatoriamente da gôndola de um supermercado

#a) Qual a probabilidade de que essa caixa de ovos **possua** 2 unidades quebradas?
  
#x: números de ovos quebrados em uma caixa de 12 ovos

n <- 12
p <- 0.05
x <- 2


#P(X=2)=?
dbinom(x, n, p)

#P(X<=2)=?
#Probabilidade de ter no máximo 2 unid quebradas
pbinom(2, 12, 0.05,lower.tail = TRUE)
#P(X>=2)=?
#Probabilidade de ter maior que 2 unid quebradas
pbinom(2, 12, 0.05,lower.tail = FALSE)



