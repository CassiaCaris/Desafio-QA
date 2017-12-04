# language: pt

Funcionalidade: Enviar mensangem para um contato no Whatsapp
  Como uma usuaria posso enviar uma mensagem para um usuario novo
  Também posso enviar uma mensagem para um contato existente

Cenário: Enviar uma mensagem para um contato novo
  Dado que eu esteja no app do Whatsapp
  E clico em "Contatos"
  Quando selecionar um contato novo na lista
  Então posso enviar uma mensagem para o contato novo

Cenário: Enviar uma mensagem para um contato existente
  Dado que eu esteja no app do Whatsapp
  Quando selecionar um contato existente na lista
  Então posso enviar uma mensagem para um contato existente.
  
