---
title: Home
hide:
- navigation
---

# Welcome to your new docs site!

_Last updated: 2025-03-02_

If you seeing this page, that means the CI successfully built your site. If
that's not the case, check the CI logs and your configuration for debugging
and if you need assistance, hop over at [our Zulip Cloud organization][zulip],
under the `#lorebooks.wiki/devel` stream.

For full documentation visit [mkdocs] and [Material theme docs][mkdocs-material].

## New site checklist

* [ ] Update README with your project's own documentation. (The template is provided for you at end of the README)
* [ ] Configure Material for Mkdocs according to your needs, from branding to those HCB links at the footer.
* [ ] Pick a new license for your docs site sources and resulting website
(or stay with MIT + CC-BY-SA-4.0 license combination)

## Commands

* `pipenv run dev` - Start the live-reloading docs server, while also
watching the theme and the `overrides` directory.
* `pipenv run build` - Build production-ready version of your site.
* `wrangler pages deploy` - Deploys your build to Cloudflare Pages, requires `wrangler` CLI to be installed

## Project layout

```plaintext
.github
  workflows
    site-build.yml   # Deploy configuration for GitHub Pages
  FUNDING.yml        # Sponsor links
docs/                # the docs directory for mkdocs
    index.md         # The documentation homepage.
    ...              # Other markdown pages, images and other files.
devenv.lock          # The flake lockfile for https://devenv.sh
devenv.nix           # reproducible dev environments with https://devenv.sh
devenv.yaml          # denvenv config file for things like flake inputs, etc.
mkdocs.yml           # The base configuration file.
Pipfile              # where pipenv will manage your deps and scripts for "pipenv run"
Pipfile.lock         # the lockfiles
requirements.txt     # generated via sending the output of `pipenv requirements` there
```

[zulip]: https://recaptime-dev.zulipchat.com
[mkdocs]: https://www.mkdocs.org
[mkdocs-material]: https://squidfunk.github.io/mkdocs-material
