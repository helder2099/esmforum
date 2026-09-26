@echo off
chcp 65001 >nul
cd /d "D:\Engenharia de software\esmforum"

echo ============================================
echo CRIANDO ARQUIVOS DA PARTE 3
echo ============================================

echo # ANALISE_SOLID.md - Analise SOLID do Codigo Existente > docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo ## a) Pontos Positivos >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo ### Ponto Positivo 1: Single Responsibility Principle >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Arquivo:** routes/perguntas.js >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Analise:** A rota GET /perguntas tem uma unica responsabilidade: >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo buscar e retornar a lista de perguntas. Nao contem logica de negocio complexa. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Principio respeitado:** SRP - a funcao tem um unico motivo para mudar. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo ### Ponto Positivo 2: Open/Closed Principle >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Arquivo:** models/pergunta.js >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Analise:** A classe Pergunta pode ser estendida sem modificacao. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Principio respeitado:** OCP - aberta para extensao, fechada para modificacao. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo ### Ponto Positivo 3: Dependency Inversion Principle >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Arquivo:** routes/perguntas.js >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Analise:** A rota depende de uma abstracao (db) em vez de uma implementacao concreta. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Principio respeitado:** DIP - modulos de alto nivel dependem de abstracoes. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo ## b) Oportunidades de Melhoria >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo ### Oportunidade 1: Violacao do SRP >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Arquivo:** routes/perguntas.js >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Problema:** A rota POST /perguntas acumula validacao, logica de negocio e acesso a dados. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Principio violado:** SRP - a funcao tem multiplos motivos para mudar. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Melhoria proposta:** Separar em Controller, Service e Repository. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo ### Oportunidade 2: Violacao do DIP >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Arquivo:** routes/respostas.js >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Problema:** A rota depende diretamente da implementacao concreta sqlite3. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Principio violado:** DIP - dependencia de implementacao concreta. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo. >> docs\parte3\iteracao1\ANALISE_SOLID.md
echo **Melhoria proposta:** Criar uma abstracao Database. >> docs\parte3\iteracao1\ANALISE_SOLID.md

echo # IMPLEMENTACAO_SOLID.md - Implementacao com SOLID > docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo ## Funcionalidade Implementada >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo **Busca de perguntas por palavra-chave** >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo ## Aplicacao dos Principios SOLID >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo ### 1. Single Responsibility Principle (SRP) >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo Separei a funcionalidade em tres camadas: >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo - **Controller**: recebe a requisicao HTTP >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo - **Service**: logica de negocio >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo - **Repository**: acesso a dados >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo ### 2. Dependency Inversion Principle (DIP) >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo As classes de alto nivel dependem de abstracoes. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo ### 3. Open/Closed Principle (OCP) >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo A classe BuscaService esta aberta para extensao, mas fechada para modificacao. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo ## Estrutura de Arquivos >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo. >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo esmforum/ >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo   controllers/buscaController.js >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo   services/buscaService.js >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo   repositories/perguntaRepository.js >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md
echo   routes/busca.js >> docs\parte3\iteracao1\IMPLEMENTACAO_SOLID.md

echo # PADROES_EXISTENTES.md - Padroes de Projeto Existentes > docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo ## Padrao 1: Module Pattern >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Onde:** routes/perguntas.js, routes/respostas.js >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Descricao:** Uso do padrao de modulo do Node.js (module.exports). >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Status:** Completo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo ## Padrao 2: Middleware Pattern >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Onde:** server.js >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Descricao:** Express usa middlewares em cadeia. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Status:** Completo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo ## Padrao 3: Singleton (Parcial) >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Onde:** db.js >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Descricao:** Conexao unica com o banco. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo. >> docs\parte3\iteracao2\PADROES_EXISTENTES.md
echo **Status:** Parcial. Poderia ser explicito com getInstance(). >> docs\parte3\iteracao2\PADROES_EXISTENTES.md

echo # PADROES_PROPOSTOS.md - Proposta de Padroes > docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo ## Padrao 1: Strategy >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Funcionalidade:** Busca de perguntas >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Problema:** Diferentes estrategias de busca (titulo, corpo, tags). >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Solucao:** Interface BuscaStrategy com implementacoes concretas. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Diagrama:** >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo ```mermaid >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo classDiagram >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo     class BuscaStrategy { >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo         ^<^<interface^>^> >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo         +buscar(palavra) >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo     } >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo     class BuscaPorTitulo >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo     class BuscaPorCorpo >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo     BuscaStrategy ^<^|.. BuscaPorTitulo >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo     BuscaStrategy ^<^|.. BuscaPorCorpo >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo ``` >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo ## Padrao 2: Observer >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Funcionalidade:** Notificacao de novas respostas >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Problema:** Notificar multiplos usuarios quando uma resposta e adicionada. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Solucao:** Subject (Pergunta) notifica Observers (Notificadores). >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo ## Padrao 3: Factory >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Funcionalidade:** Criacao de notificacoes >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Problema:** Criar diferentes tipos de notificacao (email, push, app). >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md
echo **Solucao:** NotificacaoFactory centraliza a criacao. >> docs\parte3\iteracao2\PADROES_PROPOSTOS.md

echo # ARQUITETURA.md - Analise Arquitetural > docs\parte3\iteracao3\ARQUITETURA.md
echo. >> docs\parte3\iteracao3\ARQUITETURA.md
echo ## a) Identificacao da Arquitetura >> docs\parte3\iteracao3\ARQUITETURA.md
echo. >> docs\parte3\iteracao3\ARQUITETURA.md
echo O sistema ESM Forum segue uma arquitetura **Cliente-Servidor** com separacao em **camadas**: >> docs\parte3\iteracao3\ARQUITETURA.md
echo. >> docs\parte3\iteracao3\ARQUITETURA.md
echo 1. **Frontend (React)**: Camada de apresentacao >> docs\parte3\iteracao3\ARQUITETURA.md
echo 2. **Backend (Node.js/Express)**: Camada de negocio e API >> docs\parte3\iteracao3\ARQUITETURA.md
echo 3. **Banco de Dados (SQLite)**: Camada de persistencia >> docs\parte3\iteracao3\ARQUITETURA.md
echo. >> docs\parte3\iteracao3\ARQUITETURA.md
echo ### Comunicacao Frontend-Backend >> docs\parte3\iteracao3\ARQUITETURA.md
echo. >> docs\parte3\iteracao3\ARQUITETURA.md
echo - Frontend consome API REST via HTTP >> docs\parte3\iteracao3\ARQUITETURA.md
echo - Formato: JSON >> docs\parte3\iteracao3\ARQUITETURA.md
echo - Endpoints: /perguntas, /respostas, /usuarios >> docs\parte3\iteracao3\ARQUITETURA.md
echo. >> docs\parte3\iteracao3\ARQUITETURA.md
echo ## b) Diagrama Arquitetural >> docs\parte3\iteracao3\ARQUITETURA.md
echo. >> docs\parte3\iteracao3\ARQUITETURA.md
echo ```mermaid >> docs\parte3\iteracao3\ARQUITETURA.md
echo flowchart TB >> docs\parte3\iteracao3\ARQUITETURA.md
echo     subgraph Frontend >> docs\parte3\iteracao3\ARQUITETURA.md
echo         UI[Interface React] >> docs\parte3\iteracao3\ARQUITETURA.md
echo     end >> docs\parte3\iteracao3\ARQUITETURA.md
echo     subgraph Backend >> docs\parte3\iteracao3\ARQUITETURA.md
echo         ROUTES[Rotas/Controllers] >> docs\parte3\iteracao3\ARQUITETURA.md
echo         BUSINESS[Logica de Negocio] >> docs\parte3\iteracao3\ARQUITETURA.md
echo         DATA[Acesso a Dados] >> docs\parte3\iteracao3\ARQUITETURA.md
echo     end >> docs\parte3\iteracao3\ARQUITETURA.md
echo     DB[(SQLite)] >> docs\parte3\iteracao3\ARQUITETURA.md
echo     UI --^>^|HTTP/JSON^| ROUTES >> docs\parte3\iteracao3\ARQUITETURA.md
echo     ROUTES --^> BUSINESS >> docs\parte3\iteracao3\ARQUITETURA.md
echo     BUSINESS --^> DATA >> docs\parte3\iteracao3\ARQUITETURA.md
echo     DATA --^> DB >> docs\parte3\iteracao3\ARQUITETURA.md
echo ``` >> docs\parte3\iteracao3\ARQUITETURA.md

echo # PROPOSTA_ARQUITETURA.md - Proposta Arquitetural > docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ## a) Proposta de Separacao em Camadas >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ### Estrutura Proposta >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo backend/ >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo   src/ >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo     presentation/ (controllers, routes, middlewares) >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo     business/ (services, strategies) >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo     data/ (repositories, database) >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ### Responsabilidades das Camadas >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ^| Camada ^| Responsabilidade ^| Exemplos ^| >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ^|--------^|------------------^|----------^| >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ^| Apresentacao ^| Receber HTTP, validar entrada ^| Controllers, Routes ^| >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ^| Negocio ^| Logica, validacoes, regras ^| Services, Strategies ^| >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ^| Dados ^| Acesso ao banco, queries SQL ^| Repositories ^| >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ## b) Proposta de Aplicacao do Padrao MVC >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ### Funcionalidade: Busca de Perguntas >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo **Model:** Pergunta (id, titulo, corpo, autorId) >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo **View:** Formatacao JSON da resposta >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo **Controller:** BuscaController - orquestra requisicao >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo ### Fluxo Completo >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo. >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo 1. Usuario digita palavra-chave no frontend >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo 2. Frontend envia GET /api/perguntas/busca?q=palavra >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo 3. Controller recebe e chama Service >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo 4. Service valida e chama Repository >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo 5. Repository consulta banco >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md
echo 6. Resultados retornam em JSON >> docs\parte3\iteracao3\PROPOSTA_ARQUITETURA.md

echo ============================================
echo ARQUIVOS DA PARTE 3 CRIADOS!
echo ============================================
dir docs\parte3\iteracao1\
dir docs\parte3\iteracao2\
dir docs\parte3\iteracao3\