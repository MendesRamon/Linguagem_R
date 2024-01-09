#================ANÁLISE DESCRITIVA===================================

#Setando o diretório e Importando Base de Dados

setwd("C:/Users/Lenovo/Desktop/BASE_DADOS/R")

dados <- read.csv('Banco de Dados 2.csv', sep = ';', dec = ',',
                  stringsAsFactors = T, fileEncoding = "latin1")

#verificando se há e importando pacotes
if(!require(dplyr))
  install.packages("dplyr")
library(dplyr)

if(!require(psych))
  install.packages("psych")
library(psych)

#visualizando e analisando o dataset
View(dados)
glimpse(dados)

#analisando o genero
table(dados$Genero)

#analisando o grau de instrução
table(dados$Grau_de_Instruçao)

#tabela cruzada com frequência absoluta
table(dados$Genero, dados$Grau_de_Instruçao)

#calculando proporção ou ferq. relativa
prop.table(table(dados$Genero))
prop.table(table(dados$Genero, dados$Grau_de_Instruçao))

#filhos
table(dados$N_Filhos)
analise_filhos <- prop.table(table(dados$N_Filhos))

#analisando em percentual
#sprintf("%.2f%%", analise_filhos * 100) 


#Variáveis contínuas
#Necessário criar categorias que correspondam a faixas de valores

#Passo 1: Analisar a amplitude
range(dados$Salario) #retorna um vetor contendo o mínimo e o máximo de todos os argumentos fornecidos.

#Passo 2 (opcional): avaliar a quantidade de categorias adequada (método Sturges)
nclass.Sturges(dados$Salario)#Calcule o número de classes para um histograma

#Passo 3: criação da tabela com as faixas de valores
table(cut(dados$Salario, seq(0, 6, l=7)))

#plotando em um histograma
hist(dados$Salario, main="Histogram de Salários", xlab="Salário", ylab="Frequência",col="gray")

summary(dados$Salario)
summary(dados$N_Filhos)

describe(dados$Salario) 
describeBy(dados$Salario, group=dados$Genero) #describe.by (pacote 'psych')

describeBy(dados$Salario, group = dados$Genero:dados$Grau_de_Instruçao)

# Usando o group_by do pacote dplyr
tabela <- dados %>% group_by(Genero, Grau_de_Instruçao) %>% 
  summarise(media = mean(Salario),
            DP = sd(Salario),
            mediana = median(Salario))
tabela


