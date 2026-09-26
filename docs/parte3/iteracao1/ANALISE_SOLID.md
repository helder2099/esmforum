# ANALISE_SOLID.md - Analise SOLID do Codigo Existente 
 
## a) Pontos Positivos 
 
### Ponto Positivo 1: Single Responsibility Principle 
 
**Arquivo:** routes/perguntas.js 
 
**Analise:** A rota GET /perguntas tem uma unica responsabilidade: 
buscar e retornar a lista de perguntas. Nao contem logica de negocio complexa. 
 
**Principio respeitado:** SRP - a funcao tem um unico motivo para mudar. 
 
### Ponto Positivo 2: Open/Closed Principle 
 
**Arquivo:** models/pergunta.js 
 
**Analise:** A classe Pergunta pode ser estendida sem modificacao. 
 
**Principio respeitado:** OCP - aberta para extensao, fechada para modificacao. 
 
### Ponto Positivo 3: Dependency Inversion Principle 
 
**Arquivo:** routes/perguntas.js 
 
**Analise:** A rota depende de uma abstracao (db) em vez de uma implementacao concreta. 
 
**Principio respeitado:** DIP - modulos de alto nivel dependem de abstracoes. 
 
## b) Oportunidades de Melhoria 
 
### Oportunidade 1: Violacao do SRP 
 
**Arquivo:** routes/perguntas.js 
 
**Problema:** A rota POST /perguntas acumula validacao, logica de negocio e acesso a dados. 
 
**Principio violado:** SRP - a funcao tem multiplos motivos para mudar. 
 
**Melhoria proposta:** Separar em Controller, Service e Repository. 
 
### Oportunidade 2: Violacao do DIP 
 
**Arquivo:** routes/respostas.js 
 
**Problema:** A rota depende diretamente da implementacao concreta sqlite3. 
 
**Principio violado:** DIP - dependencia de implementacao concreta. 
 
**Melhoria proposta:** Criar uma abstracao Database. 
