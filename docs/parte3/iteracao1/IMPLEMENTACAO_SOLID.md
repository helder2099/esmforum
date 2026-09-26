# IMPLEMENTACAO_SOLID.md - Implementacao com SOLID 
 
## Funcionalidade Implementada 
 
**Busca de perguntas por palavra-chave** 
 
## Aplicacao dos Principios SOLID 
 
### 1. Single Responsibility Principle (SRP) 
 
Separei a funcionalidade em tres camadas: 
- **Controller**: recebe a requisicao HTTP 
- **Service**: logica de negocio 
- **Repository**: acesso a dados 
 
### 2. Dependency Inversion Principle (DIP) 
 
As classes de alto nivel dependem de abstracoes. 
 
### 3. Open/Closed Principle (OCP) 
 
A classe BuscaService esta aberta para extensao, mas fechada para modificacao. 
 
## Estrutura de Arquivos 
 
esmforum/ 
  controllers/buscaController.js 
  services/buscaService.js 
  repositories/perguntaRepository.js 
  routes/busca.js 
