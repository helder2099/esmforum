# HISTORIAS.md - Historias de Usuario 
 
## Historia 1: Sistema de Votacao 
 
**Como** usuario autenticado do forum, 
**Eu quero** votar em perguntas (upvote/downvote), 
**Para** destacar perguntas uteis e relevantes para a comunidade. 
 
**Criterios de Aceitacao:** 
- [ ] Cada pergunta deve exibir botoes de upvote e downvote 
- [ ] O contador de votos deve ser atualizado em tempo real 
- [ ] Usuarios podem mudar seu voto 
- [ ] Usuarios nao podem votar multiplas vezes 
- [ ] O sistema deve exibir feedback visual 
 
## Historia 2: Busca de Perguntas por Palavra-chave 
 
**Como** usuario do forum, 
**Eu quero** buscar perguntas por palavras-chave, 
**Para** encontrar rapidamente conteudos relevantes. 
 
**Criterios de Aceitacao:** 
- [ ] Deve haver um campo de busca visivel 
- [ ] A busca deve retornar perguntas com a palavra-chave 
- [ ] Os resultados devem ser ordenados por relevancia 
- [ ] A busca deve ser case-insensitive 
- [ ] Mensagem informativa se nenhum resultado 
 
## Historia 3: Categorizacao de Perguntas (Tags) 
 
**Como** usuario do forum, 
**Eu quero** categorizar perguntas com tags, 
**Para** organizar o conteudo e facilitar a navegacao. 
 
**Criterios de Aceitacao:** 
- [ ] Ao criar pergunta, associar uma ou mais tags 
- [ ] Lista de tags pre-definidas 
- [ ] Tags exibidas junto a pergunta 
- [ ] Filtrar perguntas por tag 
- [ ] Permite criar novas tags 
 
## Priorizacao das Historias 
 
| Prioridade | Historia | Justificativa | 
|------------|----------|---------------| 
| 1 | Busca por palavra-chave | Alto valor, baixa complexidade | 
| 2 | Categorizacao com tags | Alto valor, complementa busca | 
| 3 | Sistema de votacao | Engajamento, complexidade media | 
 
### Justificativa da ordem 
 
1. Busca vem primeiro por ser de alto valor e baixa complexidade. 
2. Tags vem em segundo por complementar a busca. 
3. Votacao vem por ultimo por exigir mudancas mais profundas. 
