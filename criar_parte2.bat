@echo off
chcp 65001 >nul
cd /d "D:\Engenharia de software\esmforum"

echo ============================================
echo CRIANDO ARQUIVOS DA PARTE 2
echo ============================================

echo # HISTORIAS.md - Historias de Usuario > docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo ## Historia 1: Sistema de Votacao >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo **Como** usuario autenticado do forum, >> docs\parte2\HISTORIAS.md
echo **Eu quero** votar em perguntas (upvote/downvote), >> docs\parte2\HISTORIAS.md
echo **Para** destacar perguntas uteis e relevantes para a comunidade. >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo **Criterios de Aceitacao:** >> docs\parte2\HISTORIAS.md
echo - [ ] Cada pergunta deve exibir botoes de upvote e downvote >> docs\parte2\HISTORIAS.md
echo - [ ] O contador de votos deve ser atualizado em tempo real >> docs\parte2\HISTORIAS.md
echo - [ ] Usuarios podem mudar seu voto >> docs\parte2\HISTORIAS.md
echo - [ ] Usuarios nao podem votar multiplas vezes >> docs\parte2\HISTORIAS.md
echo - [ ] O sistema deve exibir feedback visual >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo ## Historia 2: Busca de Perguntas por Palavra-chave >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo **Como** usuario do forum, >> docs\parte2\HISTORIAS.md
echo **Eu quero** buscar perguntas por palavras-chave, >> docs\parte2\HISTORIAS.md
echo **Para** encontrar rapidamente conteudos relevantes. >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo **Criterios de Aceitacao:** >> docs\parte2\HISTORIAS.md
echo - [ ] Deve haver um campo de busca visivel >> docs\parte2\HISTORIAS.md
echo - [ ] A busca deve retornar perguntas com a palavra-chave >> docs\parte2\HISTORIAS.md
echo - [ ] Os resultados devem ser ordenados por relevancia >> docs\parte2\HISTORIAS.md
echo - [ ] A busca deve ser case-insensitive >> docs\parte2\HISTORIAS.md
echo - [ ] Mensagem informativa se nenhum resultado >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo ## Historia 3: Categorizacao de Perguntas (Tags) >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo **Como** usuario do forum, >> docs\parte2\HISTORIAS.md
echo **Eu quero** categorizar perguntas com tags, >> docs\parte2\HISTORIAS.md
echo **Para** organizar o conteudo e facilitar a navegacao. >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo **Criterios de Aceitacao:** >> docs\parte2\HISTORIAS.md
echo - [ ] Ao criar pergunta, associar uma ou mais tags >> docs\parte2\HISTORIAS.md
echo - [ ] Lista de tags pre-definidas >> docs\parte2\HISTORIAS.md
echo - [ ] Tags exibidas junto a pergunta >> docs\parte2\HISTORIAS.md
echo - [ ] Filtrar perguntas por tag >> docs\parte2\HISTORIAS.md
echo - [ ] Permite criar novas tags >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo ## Priorizacao das Historias >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo ^| Prioridade ^| Historia ^| Justificativa ^| >> docs\parte2\HISTORIAS.md
echo ^|------------^|----------^|---------------^| >> docs\parte2\HISTORIAS.md
echo ^| 1 ^| Busca por palavra-chave ^| Alto valor, baixa complexidade ^| >> docs\parte2\HISTORIAS.md
echo ^| 2 ^| Categorizacao com tags ^| Alto valor, complementa busca ^| >> docs\parte2\HISTORIAS.md
echo ^| 3 ^| Sistema de votacao ^| Engajamento, complexidade media ^| >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo ### Justificativa da ordem >> docs\parte2\HISTORIAS.md
echo. >> docs\parte2\HISTORIAS.md
echo 1. Busca vem primeiro por ser de alto valor e baixa complexidade. >> docs\parte2\HISTORIAS.md
echo 2. Tags vem em segundo por complementar a busca. >> docs\parte2\HISTORIAS.md
echo 3. Votacao vem por ultimo por exigir mudancas mais profundas. >> docs\parte2\HISTORIAS.md

echo Arquivo HISTORIAS.md criado!

echo # CASO_DE_USO.md - Caso de Uso Detalhado > docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo ## Caso de Uso: Votar em Pergunta >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo **Ator:** Usuario autenticado >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo **Pre-condicoes:** >> docs\parte2\CASO_DE_USO.md
echo - Usuario esta logado no sistema >> docs\parte2\CASO_DE_USO.md
echo - Pergunta existe no banco de dados >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo **Fluxo Principal:** >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo 1. Sistema exibe a lista de perguntas com contador de votos >> docs\parte2\CASO_DE_USO.md
echo 2. Usuario seleciona botao de upvote (ou downvote) >> docs\parte2\CASO_DE_USO.md
echo 3. Sistema valida se o usuario esta autenticado >> docs\parte2\CASO_DE_USO.md
echo 4. Sistema verifica se o usuario ja votou nesta pergunta >> docs\parte2\CASO_DE_USO.md
echo 5. Sistema registra o novo voto no banco de dados >> docs\parte2\CASO_DE_USO.md
echo 6. Sistema atualiza o contador de votos >> docs\parte2\CASO_DE_USO.md
echo 7. Sistema exibe feedback visual >> docs\parte2\CASO_DE_USO.md
echo 8. Caso de uso encerrado >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo **Fluxo Alternativo 1: Usuario ja votou** >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo 4a. Sistema detecta que o usuario ja votou >> docs\parte2\CASO_DE_USO.md
echo 4b. Sistema remove o voto anterior >> docs\parte2\CASO_DE_USO.md
echo 4c. Sistema registra o novo voto >> docs\parte2\CASO_DE_USO.md
echo 4d. Sistema atualiza o contador >> docs\parte2\CASO_DE_USO.md
echo 4e. Retorna ao passo 7 >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo **Fluxo Alternativo 2: Usuario nao autenticado** >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo 3a. Sistema detecta que o usuario nao esta logado >> docs\parte2\CASO_DE_USO.md
echo 3b. Sistema exibe mensagem solicitando login >> docs\parte2\CASO_DE_USO.md
echo 3c. Sistema redireciona para login >> docs\parte2\CASO_DE_USO.md
echo 3d. Caso de uso encerrado >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo **Fluxo Alternativo 3: Erro ao registrar** >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo 5a. Sistema falha ao registrar o voto >> docs\parte2\CASO_DE_USO.md
echo 5b. Sistema exibe mensagem de erro >> docs\parte2\CASO_DE_USO.md
echo 5c. Sistema solicita nova tentativa >> docs\parte2\CASO_DE_USO.md
echo 5d. Caso de uso encerrado >> docs\parte2\CASO_DE_USO.md
echo. >> docs\parte2\CASO_DE_USO.md
echo **Pos-condicoes:** >> docs\parte2\CASO_DE_USO.md
echo - O voto do usuario esta registrado >> docs\parte2\CASO_DE_USO.md
echo - O contador de votos foi atualizado >> docs\parte2\CASO_DE_USO.md
echo - O usuario recebeu feedback visual >> docs\parte2\CASO_DE_USO.md

echo Arquivo CASO_DE_USO.md criado!

echo classDiagram > docs\parte2\diagramas\diagrama_classes.mmd
echo     class Usuario >> docs\parte2\diagramas\diagrama_classes.mmd
echo     class Pergunta >> docs\parte2\diagramas\diagrama_classes.mmd
echo     class Resposta >> docs\parte2\diagramas\diagrama_classes.mmd
echo     class Tag >> docs\parte2\diagramas\diagrama_classes.mmd
echo     class Voto >> docs\parte2\diagramas\diagrama_classes.mmd
echo     Usuario "1" -- "*" Pergunta >> docs\parte2\diagramas\diagrama_classes.mmd
echo     Usuario "1" -- "*" Resposta >> docs\parte2\diagramas\diagrama_classes.mmd
echo     Usuario "1" -- "*" Voto >> docs\parte2\diagramas\diagrama_classes.mmd
echo     Pergunta "1" -- "*" Resposta >> docs\parte2\diagramas\diagrama_classes.mmd
echo     Pergunta "1" -- "*" Voto >> docs\parte2\diagramas\diagrama_classes.mmd
echo     Pergunta "*" -- "*" Tag >> docs\parte2\diagramas\diagrama_classes.mmd

echo Arquivo diagrama_classes.mmd criado!

echo sequenceDiagram > docs\parte2\diagramas\diagrama_sequencia.mmd
echo     actor U as Usuario >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     participant F as Frontend >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     participant A as API >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     participant B as Banco >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     U->>F: Clica em upvote >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     F->>A: POST /voto >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     A->>B: INSERT INTO votos >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     B-->>A: OK >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     A-->>F: 200 OK >> docs\parte2\diagramas\diagrama_sequencia.mmd
echo     F-->>U: Atualiza contador >> docs\parte2\diagramas\diagrama_sequencia.mmd

echo Arquivo diagrama_sequencia.mmd criado!

echo flowchart TD > docs\parte2\diagramas\diagrama_atividades.mmd
echo     A([Inicio]) --^> B[Usuario digita palavra-chave] >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     B --^> C{Palavra vazia?} >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     C --^>^|Sim^| D[Exibe erro] >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     D --^> B >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     C --^>^|Nao^| E[Frontend envia requisicao] >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     E --^> F[API consulta banco] >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     F --^> G{Resultados?} >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     G --^>^|Sim^| H[Exibe lista] >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     G --^>^|Nao^| I[Mensagem vazia] >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     H --^> J([Fim]) >> docs\parte2\diagramas\diagrama_atividades.mmd
echo     I --^> J >> docs\parte2\diagramas\diagrama_atividades.mmd

echo Arquivo diagrama_atividades.mmd criado!

echo stateDiagram-v2 > docs\parte2\diagramas\diagrama_estados.mmd
echo     [*] --^> Rascunho : Criar >> docs\parte2\diagramas\diagrama_estados.mmd
echo     Rascunho --^> Publicada : Publicar >> docs\parte2\diagramas\diagrama_estados.mmd
echo     Publicada --^> Respondida : Receber resposta >> docs\parte2\diagramas\diagrama_estados.mmd
echo     Publicada --^> Fechada : Fechar >> docs\parte2\diagramas\diagrama_estados.mmd
echo     Respondida --^> Fechada : Fechar >> docs\parte2\diagramas\diagrama_estados.mmd
echo     Fechada --^> [*] : Arquivar >> docs\parte2\diagramas\diagrama_estados.mmd
echo     Publicada --^> Excluida : Excluir >> docs\parte2\diagramas\diagrama_estados.mmd
echo     Excluida --^> [*] >> docs\parte2\diagramas\diagrama_estados.mmd

echo Arquivo diagrama_estados.mmd criado!

echo ============================================
echo TODOS OS ARQUIVOS DA PARTE 2 FORAM CRIADOS!
echo ============================================
echo.
dir docs\parte2\
echo.
dir docs\parte2\diagramas\
echo.
echo ============================================
echo PROXIMO PASSO: Gerar imagens PNG no Mermaid Live
echo Acesse: https://mermaid.live/
echo ============================================