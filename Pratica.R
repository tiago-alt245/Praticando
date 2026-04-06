# Leitura e análise do banco de dados

dados = read.csv("dados-aula-7-limpos.csv", heade=TRUE, sep = ",")
str(dados)
head(dados)

# Cálculo de IMC

dados$imc = dados$peso / ((dados$altura/100)^2)

#Criando faixas etárias

dados$faixa_etaria = ifelse(dados$idade < 30, "Jovem",
                            ifelse(dados$idade < 60, "Adulto", "Idoso"))
dados$faixa_etaria = factor(dados$faixa_etaria)

# (PREENCHER NA BRANCH analise-graficos,) 

# use comandos para distribuição de frequências de sexo, gráfico de colunas para faixa_etaria por sexo, histograma de altura, boxplot de IMC por sexo

# 3. Medidas descritivas

# (PREENCHER NA BRANCH analise-medidas)

# use comandos de cálculo de mínimo, máximo, média, mediana e desvio-padrão para idade, altura, peso e IMC

table(dados$sexo)
barplot(table(dados$faixa_etaria, dados$sexo), beside = TRUE, legend
        = TRUE)
hist(dados$altura)
boxplot(dados$imc ~ dados$sexo)
usethis::use_git_config(user.name = "tiago-alt-245",
                        user.email = "htopimentel@id.uff.br")
                        
