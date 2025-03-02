---
date: 2025-03-02
slug: changelog-2025-03-02
categories:
  - Changelog
authors:
  - ajhalili2006
---

# Community Lorebooks Material for Mkdocs template March 02, 2025 changelog

It's been a few months since [the last commit], but hey, I am still updating this
repository template to [keep up with changes on upstream][releases-material], alongside
other maintenance works at both the [`lorebooks.wiki` website](https://lorebooks.wiki)
and other projects at Recap Time Squad. To get things started in 2025, here's a quick roundup on
what's cooking for this template behind the scenes.

## Switching to GitLab SaaS from `mau.dev`

@tulir's [GitLab instance] served us throughout the years, but it's time to migrate
back to GitLab SaaS thanks to [complimentary Ultimate SaaS plan under its open-source program][gitlab-for-oss]
currently used by our parent organization since February 13, 2025.

![Our compimentary Ultimate SaaS plan in nutshell](https://cdn.hackclubber.dev/slackcdn/6df03135fc777f905cf434fa94a282d3.png)

Now we have taken the program application for Community Lorebooks after sorting things out behind
the scenes and taking some screenshots, we'll give you a update by approximately next month about
our application.

## Reproducible development environments with Nix and devenv

I also set up reproducible development environments using [Nix](https://nixos.org)
and [`devenv`](https://devenv.sh), including the needed packages for [social previews]
to work on `pipenv run build`.

![That Konsole shell session with direnv integration for devenv](https://cdn.hackclubber.dev/slackcdn/783e4db52de7e0bd15e1069eb7dc96e5.png)

Feel free to edit `devenv.nix` and `devenv.yaml` as you need, including adding more
packages and scripts, enabling Node.js and other languages, and even let `devenv` build
container images for you on your project.

## Website updates

One of the major updates that I implemented are the addition of footer links and good old
fiscal sponsorship disclosure text for HCB organizations.

![footer links and HCB fiscal sponsorship disclosures go there](https://cdn.hack.pet/slackcdn/34d227b80798582293f13a986fa94219.jpg)

If you need to have these on your project, have a peek at our [overrides for copyright text section]
and adjust your `mkdocs.yml` configuration with the following lines at `extra` section. Here's a
example from this demo site itself:

```yaml
extra:
  # anything else go here
  hcb:
    org_name: Community Lorebooks
    org_slug: lorebooks-wiki
    # you don't have to fill this up if you don't have dedicated HCB organization per project
    # or event (e.g. Scrapyard and Counterspell in context of running satelite events with HQ
    # funding) on your team
    parent_org_name: Recap Time Squad
    parent_org_slug: recaptime-dev
  footer_links:
    - label: Use as template on GitHub
      href: https://github.com/lorebooks-wiki/mkdocs-material-template/generate
    - label: Fork on GitLab SaaS
      href: https://gitlab.com/lorebooks-wiki/templates/mkdocs-material/-/forks/new
    - label: Learn more about Community Lorebooks
      href: https://lorebooks.wiki
    - label: "Hey, what's HCB?"
      href: https://hackclub.com/fiscal-sponsorship
```

They are hidden by default if you don't plan to use them or set `extra.hcb.hidden` to `true`
if needed, and I will be working on supporting other fiscal hosts in the future.

## That's a wrap for now

So there you go for this [Cafe] session over at [Hack Club Slack]. For more updates,
visit our blog at <https://blog.recaptime.dev> and follow the crew over at the
[fediverse](https://mastodon.xyz/@RecapTimeSquad) or [Bluesky](https://bsky.app/profile/recaptime.dev)

[the last commit]: https://gitlab.com/lorebooks-wiki/templates/mkdocs-material/-/commit/89d30a05ef4b49774a71484b47b0703162fb2638
[releases-material]: https://github.com/squidfunk/mkdocs-material/releases
[gitlab-for-oss]: https://about.gitlab.com/solutions/open-source/
[GitLab instance]: https://mau.dev
[social previews]: https://squidfunk.github.io/mkdocs-material/plugins/requirements/image-processing/
[overrides for copyright text section]: https://gitlab.com/lorebooks-wiki/templates/mkdocs-material/-/blob/main/overrides/partials/copyright.html
[Cafe]: https://hackclub.slack.com/archives/C02A74Z7G7L
[Hack Club Slack]: https://hackclub.com/slack
