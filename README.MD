# About the SEUH 2022 Website

This is the source code for the [SEUH 2022 Website.](https://seuh.org/seuh2022/)

## Repos

- Development Repo: [https://github.com/seuh2022](https://github.com/seuh2022)
    - all pushes to master will be deployed to the [Staging Environment](https://seuh2022.github.io/seuh2022)
    - Status: [![Deploy Staging](https://github.com/seuh2022/seuh2022/actions/workflows/deploy-staging.yml/badge.svg)](https://github.com/seuh2022/seuh2022/actions/workflows/deploy-staging.yml)
    - all tags starting with v* will be pushed to the deployment repository:

- Deployment Repo: [https://webgit.k8s.sqa.ddnss.org](https://webgit.k8s.sqa.ddnss.org)
    - all tags "v*" will be deployed to the site as described in [.drone.yml](.drone.yml)

## Editing and Releasing from the Github Website

- all content is contained in markdown files in the [content folder](tree/master/content) - find the matching page in the hierarchy and edit the content via the webpage
- [draft and create a new release](https://github.com/seuh2022/seuh2022/releases/new) - create a new tag on the go, it has to start with a "v", e.g. "v1.1" to be deployed.

## Editing and Development:

This website was built with the static site generator [Hugo](https://gohugo.io/).

Install Hugo and clone this repo:

    git clone --recurse-submodules git@github.com:seuh2022/seuh2022.git

cd and start the server with:

    cd seuh2022
    hugo -D -p 1313 server

And then view the generated site:  [http://localhost:1313/seuh2022](http://localhost:1313/seuh2022)

Have a look at the makefile for more useful commands.

## Structure

| SEUH                | Programm      | Termine        | Kontakt         |
|:--------------------|:--------------|:---------------|:----------------|
| - About + Sponsoren | - Programm    | - CFP          | - Maillingliste |
| - Geschichte        | - Tagungsband | - Registration | - Local Orga    |

## Deployment Pipeline

- [Staging Environment](https://seuh2022.github.io/seuh2022)

## Credits

### Icons
The free icons are from B[ootstrap-Icons](https://icons.getbootstrap.com/).

### Theme

The SEUH 2022 Website is based on the

[Hero Hugo Theme](https://themes.gohugo.io/themes/hugo-hero-theme/), on GitHub:
[zerostaticthemes/hugo-hero-theme: A multi-page Hugo theme with fullscreen hero images and fullwidth sections.](https://github.com/zerostaticthemes/hugo-hero-theme)

### Photos

see the[ Photo credits site](https://www.seuh.org/seuh2022/about/).
