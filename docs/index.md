name: Home
---

# Welcome to your new docs site!

If you seeing this page, that means the CI successfully built your site. If that's not the case,
check the CI logs and your configuration for debugging and if you need assistance,
hop over at [our Zulip Cloud organization](https://recaptime-dev.zulipchat.com), under the
`#lorebooks.wiki/devel` stream.

For full documentation visit [mkdocs.org](https://www.mkdocs.org) and [theme docs](https://squidfunk.github.io/mkdocs-material).

## Commands

* `mkdocs serve --watch overrides --watch-theme --livereload` - Start the live-reloading docs server, while also
watching the theme and the `overrides` directory.

```console
(mkdocs-material-template) @ajhalili2006 ➜ /workspaces/mkdocs-material-template (main) $ mkdocs serve --watch overrides --watch-theme --livereload
INFO    -  Building documentation...
INFO    -  Cleaning site directory
INFO    -  Documentation built in 0.35 seconds
INFO    -  [08:00:29] Watching paths for changes: 'docs', 'mkdocs.yml',
           '/home/codespace/.local/share/virtualenvs/mkdocs-material-template-KGo_oB1i/lib/python3.10/site-packages/material/templates',
           '/home/codespace/.local/share/virtualenvs/mkdocs-material-template-KGo_oB1i/lib/python3.10/site-packages/mkdocs/templates',
           'overrides'
INFO    -  [08:00:29] Serving on http://127.0.0.1:8000/
INFO    -  [08:00:34] Browser connected: https://probable-fiesta-x996g7g99p5h69g4-8000.app.github.dev/
```

* `mkdocs build` - Build production-ready version of your site.

* `wrangler pages deploy` - Deploys your build to Cloudflare Pages, requires `wrangler` CLI to be installed

## Project layout

    mkdocs.yml                   # The base configuration file.
    mkdocs.readthedocs.yml       # Configuration specific to RTD.io
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.
