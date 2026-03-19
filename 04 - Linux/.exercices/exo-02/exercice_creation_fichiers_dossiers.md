# Exercice : Créer des Fichiers et des Dossiers

Pour vous entraîner à créer des fichiers et des dossiers en ligne de commande, nous allons reproduire la structure de fichiers d'un projet React standard. Pas d'inquiétude si vous ne connaissez pas React, il s'agit simplement de créer des fichiers et dossiers vides !

1. Créez un nouveau dossier appelé `my-app`.

```bash
mkdir my-app
```

2. Naviguez dans `my-app` et créez-y deux nouveaux fichiers vides appelés `README.md` et `package.json`.

```bash
cd my-app

touch README.md package.json
```

3. Toujours dans `my-app`, créez un nouveau dossier appelé `public`. Sans vous déplacer dans `public` avec `cd`, créez un fichier `index.html` à l'intérieur.

```bash
mkdir public

touch public/index.html
```


4. Créez un nouveau dossier appelé `src` dans `my-app`. Naviguez à l'intérieur.

```bash
mkdir public

touch public/index.html
```

5. En une seule ligne, créez les quatre fichiers suivants dans `src` : `App.css`, `App.js`, `index.css` et `index.js`.

```bash
touch App.js App.css index.css index.js
```

Votre structure de dossiers devrait maintenant ressembler à ceci :

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

## BONUS

> 💡 En une seule commande, créez un nouveau répertoire `components` dans `src`, et à l'intérieur de ce répertoire `components`, créez un répertoire `Navbar`. Faites cela en une seule commande, sans créer le répertoire `components` au préalable.

```bash
mkdir -p components/NavBar/
```

Votre structure de dossiers ressemblerait maintenant à ceci :

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
