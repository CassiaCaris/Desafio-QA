# language: pt

Funcionalidade: Status Whatsapp
  Como uma usuaria posso adicionar meus status
  Também posso visualizar o status atualizado pelo meus contatos

Cenário: Adicionar atualização no status
  Dado que eu esteja no app do Whatsapp
  E seleciono a aba "Status"
  E clico no "+" para adicionar uma atualização
  Quando seleciono uma imagem
  Então posso visualizar a imagem

Cenário: Visualizar atualização no status de outros usuarios
  Dado que eu esteja no app do Whatsapp
  E seleciono a aba "Status"
  Quando seleciono no status de atualizações dos usuarios
  Então posso visualizar as atualizações.
