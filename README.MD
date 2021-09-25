# About the SEUH 2022 Website

This is the source code for the [SEUH 2022 Website.](https://seuh.org/seuh2022/)

This website was built with the static site generator [Hugo](https://gohugo.io/).

## Development:

Install Hugo and clone this repo:

    git clone --recurse-submodules git@github.com:seuh2022/seuh2022-website.git

cd and start the server with:
    cd seuh2022-website
    hugo -D -p 1313 server

And then view the generated site here:  http://localhost:1313/seuh2022

Have a look at the makefile for useful commands.


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
