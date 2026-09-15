###### utilisation.md >> markdown 
### ⚡ 1. Installer Julia
- Installe Julia depuis :
`https://julialang.org/downloads/`
- Version recommandée : **Julia 1.10+**

### ⚡ 2. Télécharger ou cloner NeonJulia
- Place le dossier du projet où tu veux :
```text
git clone https://github.com/ton-compte/NeonJulia
cd NeonJulia
```

### ⚡ 3. Installer les dépendances
- NeonJulia utilise uniquement **HTTP.jl**, donc c’est très rapide.
- Dans le dossier du projet :
```dir
julia --project=.
```
- Puis dans le REPL Julia :
```julia
using Pkg
Pkg.instantiate()
```
   - Cela installe automatiquement *HTTP.jl via ton Project.toml*.

⚡ 4. Lancer NeonJulia
- Toujours dans le dossier du projet :
```text
julia --project=. src/NeonJulia.jl
```
- Tu verras :
```text
NeonJulia lancé sur http://localhost:8080
```

### ⚡ 5. Ouvrir NeonJulia dans ton navigateur
- Va sur :
```web
http://localhost:8080
```
Tu verras la *mini‑webapp* néon avec le bouton Pulse.

### ⚡ 6. Fonctionnement
NeonJulia :
- démarre un micro‑serveur HTTP en Julia  
- sert une page HTML/CSS minimaliste  
- affiche un bouton Pulse  
- déclenche une petite action JavaScript (alert)  

C’est une base parfaite pour :
- ajouter une API  
- créer une interface néon plus avancée  
- transformer NeonJulia en dashboard  
- intégrer du WebSocket  
- faire une version militaire LegionJulia  
- ou même une version IA (modèle Julia + interface web)

### ⚡ 7. Modifier le port (optionnel)
Dans *src/NeonJulia.jl* :
```julia
NeonJulia.start_server(9000)
```
- Tu changes le port en 9000, 5000, etc.

### ⚡ 8. Déploiement (optionnel)
- NeonJulia peut être déployé facilement :
   - Docker  
   - Fly.io  
   - Railway  
   - GitHub Codespaces  
   - Serveur Linux (Termux possible aussi)

---

### 🎯 Résumé ultra simple
```md
1. git clone  
2. Pkg.instantiate()  
3. julia src/NeonJulia.jl
```
4. Ouvrir localhost:8080  
