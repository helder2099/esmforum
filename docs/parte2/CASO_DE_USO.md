# CASO_DE_USO.md - Caso de Uso Detalhado 
 
## Caso de Uso: Votar em Pergunta 
 
**Ator:** Usuario autenticado 
 
**Pre-condicoes:** 
- Usuario esta logado no sistema 
- Pergunta existe no banco de dados 
 
**Fluxo Principal:** 
 
1. Sistema exibe a lista de perguntas com contador de votos 
2. Usuario seleciona botao de upvote (ou downvote) 
3. Sistema valida se o usuario esta autenticado 
4. Sistema verifica se o usuario ja votou nesta pergunta 
5. Sistema registra o novo voto no banco de dados 
6. Sistema atualiza o contador de votos 
7. Sistema exibe feedback visual 
8. Caso de uso encerrado 
 
**Fluxo Alternativo 1: Usuario ja votou** 
 
4a. Sistema detecta que o usuario ja votou 
4b. Sistema remove o voto anterior 
4c. Sistema registra o novo voto 
4d. Sistema atualiza o contador 
4e. Retorna ao passo 7 
 
**Fluxo Alternativo 2: Usuario nao autenticado** 
 
3a. Sistema detecta que o usuario nao esta logado 
3b. Sistema exibe mensagem solicitando login 
3c. Sistema redireciona para login 
3d. Caso de uso encerrado 
 
**Fluxo Alternativo 3: Erro ao registrar** 
 
5a. Sistema falha ao registrar o voto 
5b. Sistema exibe mensagem de erro 
5c. Sistema solicita nova tentativa 
5d. Caso de uso encerrado 
 
**Pos-condicoes:** 
- O voto do usuario esta registrado 
- O contador de votos foi atualizado 
- O usuario recebeu feedback visual 
