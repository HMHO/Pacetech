algoritmo "Algoritmo: Missao - Semana 5"

var
vTemp1,vTemp2,vHora: vetor[1..4] de real
opcao: inteiro

procedimento menu()
inicio
escreval("Qual conversao deseja fazer?")
escreval(" ")
escreval("1. De Graus Celsius para Graus Fahrenheit")
escreval("2. De Graus Fahrenheit para Graus Celsius")
escreval("3. Terminar")
escreval(" ")
leia(opcao)
escreval(" ")
fimprocedimento


procedimento vetores():real
var
i:inteiro

inicio

Para i de 1 ate 4 faca
   se opcao = 1 entao
      escreva("Digite a temperatura",i," (°C): ") // Conversao de °C a °F
      leia(vTemp1[i])
      vTemp2[i] <- (vTemp1[i]*9/5)+32
   fimse
   se opcao = 2 entao
      escreva("Digite a temperatura",i," (°F): ") // Conversao de °F a °C
      leia(vTemp1[i])
      vTemp2[i] <- (vTemp1[i]-32)*5/9
   fimse
   se opcao = 3 entao
   interrompa
   fimse
   escreva("Digite a Hora",i,": ")
   leia(vHora[i])
   escreval(" ")
fimpara
fimprocedimento

procedimento organizar()
var
i,j : inteiro
auxT1,auxT2,auxH : real
inicio
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se vTemp1[j] > vTemp1[i] entao
         auxT1 <- vTemp1[i]
         auxT2 <- vTemp2[i]
         auxH <- vHora[i]
         vTemp1[i] <- vTemp1[j]
         vTemp2[i] <- vTemp2[j]
         vHora[i] <- vHora[j]
         VTemp1[j] <- auxT1
         VTemp2[j] <- auxT2
         vHora[j] <- auxH
      fimse
   fimpara
fimpara
fimprocedimento

procedimento impressao()
var
i: inteiro
inicio
limpatela
Para i de 1 ate 4 faca
   se opcao = 1 entao
      escreval("A temperatura de",vTemp1[i],"°C registrada as",vHora[i],"h corresponde a",vTemp2[i],"°F")
   fimse
   se opcao = 2 entao
      escreval("A temperatura de",vTemp1[i],"°F registrada as",vHora[i],"h corresponde a",vTemp2[i],"°C")
   fimse
fimpara
fimprocedimento

inicio
repita
   menu()
   vetores()
   organizar()
   impressao()
ate opcao = "3"
fimalgoritmo
