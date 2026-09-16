🧩 docs/ARCHITECTURE.md
> Style : NeonTech / Diagrammes / Tables

`md

🧩 Architecture — NeonJulia

🏗️ Structure interne
`
NeonJulia/
 ├── src/
 │   └── NeonJulia.jl
 ├── docs/
 └── Project.toml
`

🔧 Modules
| Module | Rôle |
|--------|------|
| Core | Serveur & routing |
| Utils | Helpers & outils |
| Config | Paramètres |

🛰️ Flux interne
`
[Request] → [Parser] → [Route] → [Handler] → [Response]
`
`

---
