# ARQUITETURA.md - Analise Arquitetural 
 
## a) Identificacao da Arquitetura 
 
O sistema ESM Forum segue uma arquitetura **Cliente-Servidor** com separacao em **camadas**: 
 
1. **Frontend (React)**: Camada de apresentacao 
2. **Backend (Node.js/Express)**: Camada de negocio e API 
3. **Banco de Dados (SQLite)**: Camada de persistencia 
 
### Comunicacao Frontend-Backend 
 
- Frontend consome API REST via HTTP 
- Formato: JSON 
- Endpoints: /perguntas, /respostas, /usuarios 
 
## b) Diagrama Arquitetural 
 
```mermaid 
flowchart TB 
    subgraph Frontend 
        UI[Interface React] 
    end 
    subgraph Backend 
        ROUTES[Rotas/Controllers] 
        BUSINESS[Logica de Negocio] 
        DATA[Acesso a Dados] 
    end 
    DB[(SQLite)] 
    UI -->|HTTP/JSON| ROUTES 
    ROUTES --> BUSINESS 
    BUSINESS --> DATA 
    DATA --> DB 
``` 
