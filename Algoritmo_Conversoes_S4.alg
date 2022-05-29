algoritmo "Algoritmo de Conversoes - Semana 4"

var
opcao,opcaoT,opcaoM: caracter
tempC,tempF,vReal,vDolar,vCotacao: real
resposta,s,n: literal

inicio

repita
   limpatela
   escreval("1. Conversao Temperatura")
   escreval("2. Conversao de Moeda")
   escreval("3. Sair")
   escreval(" ")
   escreval("Escolha a opcao desejada")
   leia(opcao)
   escolha opcao

   caso "1"
      limpatela

      repita
         escreval("a Converter de Celsius para Farenheit")
         escreval("b Converter de Fahrenheit para Celsius")
         escreval("c Voltar ao menu principal")
         escreval(" ")
         escreval("Escolha a opcao desejada")
         leia(opcaoT)

         escolha opcaoT

         caso "a" // Conversao de temperatura em Celsius para Fahrenheit
            resposta <- "s"

            se resposta = "s" entao
               limpatela
               escreval("Digite a temperatura em Celsius:")
               leia(tempC)
               tempF <- (tempC*9/5)+32
               escreval("A temperatura em Fahrenheit é = ",tempF:1:2,"°F")
               escreval("Deseja fazer uma nova conversao(s/n)?") // s=sim,n=nao
               leia(resposta)
            fimse

            se resposta = "n" entao
               limpatela
               interrompa
            fimse

         caso "b" // Conversao de temperatura em Fahrenheit para Celsius
            resposta <- "s"

            se resposta = "s" entao
               escreval("Digite a temperatura em Fahrenheit:")
               leia(tempF)
               tempC <- (tempF-32)*5/9
               escreval("A temperatura em Celsius é = ",tempC:1:2,"°C")
               escreval("Deseja fazer uma nova conversao(s/n)?")
               leia(resposta)
            fimse

            se resposta = "n" entao
               limpatela
               interrompa
            fimse
         fimescolha

      ate opcaoT = "c"

   caso "2"
      limpatela

      repita
         escreval("a Converter de Real para Dolar")
         escreval("b Conveter de Dolar para Real")
         escreval("c Voltar ao menu principal")
         escreval(" ")
         escreval("Escolha a opcao desejada")
         leia(opcaoM)

         escolha opcaoM

         caso "a" // Conversao de Real para Dólar
            resposta <- "s"

            se resposta = "s" entao
               limpatela
               escreval("Digite o valor da cotacao do dia para o Dólar em Reais(R$):")
               leia(vCotacao)
               escreval("Digite o valor em Reais(R$) que deseja converter:")
               leia(vReal)
               vDolar <- vReal/vCotacao
               escreval("O valor em Dólares é = $US ",vDolar:1:2)
               escreval("Deseja fazer uma nova conversao(s/n)?") // s=sim,n=nao
               leia(resposta)
            fimse

            se resposta = "n" entao
               limpatela
               interrompa
            fimse

         caso "b" // Conversao de Dólar para Real
            resposta <- "s"

            se resposta = "s" entao
               limpatela
               escreval("Digite o valor da cotacao do dia para o Dólar em Reais(R$):")
               leia(vCotacao)
               escreval("Digite o valor em Dólares(US$) que deseja converter:")
               leia(vDolar)
               vReal <- vDolar*vCotacao
               escreval("O valor em Reais é = R$ ",vReal:1:2)
               escreval("Deseja fazer uma nova conversao(s/n)?") // s=sim,n=nao
               leia(resposta)
            fimse

            se resposta = "n" entao
               limpatela
               interrompa
            fimse

         fimescolha
      ate opcaoM = "c"

   fimescolha

ate opcao = "3"

fimalgoritmo
