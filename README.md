# Desafio-QA

## Objetivo do Desafio

Verificar suas habilidades em conceber cenários de testes e em programação, necessárias para automatização dos testes.
Para isso você deverá conceber cenários para duas funcionalidades do Whatsapp e resolver o exercício 09 do site CodeKata, que também pode ser encontrado aqui.
Deve conter
Especificação de duas funcionalidades do Whatsapp (não importa se o app é Android, iOS, Windows Phone ou versão Web) em Gherkin ou Gauge
Cada especificação deve conter ao menos um cenário de teste
Resposta do exercício 09 do site CodeKata, ou aqui, na linguagem de programação que lhe for mais conveniente

## Kata09: Back to the Checkout
http://codekata.com/kata/kata09-back-to-the-checkout/
Back to the supermarket. This week, we’ll implement the code for a checkout system that handles pricing schemes such as “apples cost 50 cents, three apples cost $1.30.”
Way back in KataOne we thought about how to model the various options for supermarket pricing. We looked at things such as “three for a dollar,” “$1.99 per pound,” and “buy two, get one free.”
This week, let’s implement the code for a supermarket checkout that calculates the total price of a number of items. In a normal supermarket, things are identified using Stock Keeping Units, or SKUs. In our store, we’ll use individual letters of the alphabet (A, B, C, and so on). Our goods are priced individually. In addition, some items are multipriced: buy n of them, and they’ll cost you y cents. For example, item ‘A’ might cost 50 cents individually, but this week we have a special offer: buy three ‘A’s and they’ll cost you $1.30. In fact this week’s prices are:
Item	Unit Price	Special Price
A	50	3 for 130
B	30	2 for 45
C	20
D	15
Our checkout accepts items in any order, so that if we scan a B, an A, and another B, we’ll recognize the two B’s and price them at 45 (for a total price so far of 95). Because the pricing changes frequently, we need to be able to pass in a set of pricing rules each time we start handling a checkout transaction.
