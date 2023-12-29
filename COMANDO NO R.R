#Funções Básicas

lista = c(1,2, 3, 1) #lista

sum(lista) #soma

length(lista) #conta valores em lista

length("Ramon")

rep("A", 3) #Repete valores n vezes

seq(2, 8, by=2) #chega em um número de acordo com o valor especificado

seq(2, 8, by=4)

#atribuindo variável
#
#a recebe 2
a <- 2
a

#soma
2 + a
#subtração
10 - a
#multiplicação
2 * a
#divisão
8 / a
#potenciação
4^a
#resultado de conta dentro de um objeto
b <- 2 + 2 * 4
b

#=============================================================================================
#Vetor. O vetor da linguagem R tem um significado um pouco diferente que o vetor da Matemática
#Para o R, um vetor é qualquer conjunto unidimensional de valores

d <- c(5, 8, 12, 3, 5, 9, 1) #d recebe um vetor

#pegando um valor de uma posição no vetor - começa do 1
d[4]


#semelhando ao M, ele lista valores de até com o :
t <- c(1:10)
t

is.vector(d)

mode(d) #trás o tipo de dado


v_1<- c(1,2,3,4,5)

v_2 <-c(1,"2",3,4,5)

is.vector(v_1) #verificando o tipo de dado
is.vector(v_2)

is.numeric(v_2)

v_2 <- as.numeric(v_2) #transformando todos os dados em números

#=============================================================================================
#lista
#listas aceitam varios tipos de dados dentro

L <- list(1, "a", 3, 4 ,5)

#analisando os dados
is.list(L)
str(L)
mode(L)
summary(L)
class(L)


e <- list(c(10,6,51,8),"2",8)


str(e)
mode(e)
summary(e)
class(e)

e[1]

e[[1]][2] #acessando o valor do vetor dentro da lista

#=============================================================================================
#Matriz.
#Uma matriz é atribuída a um objeto pela função matrix()
#2 linhas
#3colunas
e <-matrix(c(5,8,12,3.5,9,1),2,3)

m <- matrix(1:9, nrow=3)

View(m) #usando o View ele abre uma janela/tabela

m #quando não uso o View ele printa no Console

mode(m)
class(m)

m[1,3] <- "a" #alterando valor na matrix

e[2,] #linha 2 da matriz e
e[,3] #coluna 3 da matriz e
e[1,3] #elemento da linha 1, coluna 3


#=============================================================================================
#Array
f<-array(0,c(2,2,2))
f

is.array(f)

#=============================================================================================
#condicionais

if(5==5) 6 + 6 #igual a

if(1!=2) "Sim" #diferente de

if(5==5) {
  2 + 2
} else {
  "Condição não atendida"
}

#=============================================================================================
#DataFrames



