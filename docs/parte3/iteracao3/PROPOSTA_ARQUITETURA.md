# PROPOSTA_ARQUITETURA.md - Proposta Arquitetural 
 
## a) Proposta de Separacao em Camadas 
 
### Estrutura Proposta 
 
backend/ 
  src/ 
    presentation/ (controllers, routes, middlewares) 
    business/ (services, strategies) 
    data/ (repositories, database) 
 
### Responsabilidades das Camadas 
 
| Camada | Responsabilidade | Exemplos | 
|--------|------------------|----------| 
| Apresentacao | Receber HTTP, validar entrada | Controllers, Routes | 
| Negocio | Logica, validacoes, regras | Services, Strategies | 
| Dados | Acesso ao banco, queries SQL | Repositories | 
 
## b) Proposta de Aplicacao do Padrao MVC 
 
### Funcionalidade: Busca de Perguntas 
 
**Model:** Pergunta (id, titulo, corpo, autorId) 
 
**View:** Formatacao JSON da resposta 
 
**Controller:** BuscaController - orquestra requisicao 
 
### Fluxo Completo 
 
1. Usuario digita palavra-chave no frontend 
2. Frontend envia GET /api/perguntas/busca?q=palavra 
3. Controller recebe e chama Service 
4. Service valida e chama Repository 
5. Repository consulta banco 
6. Resultados retornam em JSON 
