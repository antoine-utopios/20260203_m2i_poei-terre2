# Correction : Exercice Créer des Fichiers et des Dossiers

1. **Créer le dossier `my-app`**
```bash
mkdir my-app
```

2. **Naviguer dans `my-app` et créer `README.md` et `package.json`**
```bash
cd my-app
touch README.md package.json
```

3. **Créer le dossier `public` et y créer `index.html` sans s'y déplacer**
```bash
mkdir public
touch public/index.html
```

4. **Créer le dossier `src` et s'y déplacer**
```bash
mkdir src
cd src
```

5. **Créer les quatre fichiers en une seule ligne**
```bash
touch App.css App.js index.css index.js
```

La structure obtenue :
```
my-app/
  README.md
  package.json
  public/
    index.html
  src/
    App.css
    App.js
    index.css
    index.js
```

---

## BONUS — Créer `components/Navbar` en une seule commande

```bash
mkdir -p components/Navbar
```

> L'option `-p` permet de créer plusieurs niveaux de répertoires imbriqués en une seule commande, même si les dossiers parents n'existent pas encore.

La structure finale :
```
my-app/
  README.md
  package.json
  public/
    index.html
  src/
    components/
      Navbar/
    App.css
    App.js
    index.css
    index.js
```
