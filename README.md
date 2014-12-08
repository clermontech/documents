# Clermont'ech

Les documents officiels de l'association de développeurs clermontois.

* [statuts](Statuts_Clermontech.md)
* [assemblées générales](ag)
* [manifesto](Manifesto.md)
* [comptes](Comptes.md)
* [inventaire](inventaire.md)
* [documents officiels](officiel)
* [ressources graphiques](resources)

## Docker

A dockerfile is present if you want to use [md2pdf](https://github.com/jmaupetit/md2pdf) to generate the documents. This container contains all needed fonts.

### Usage

Build the image

```
$ docker build -t clermontech-md2pdf .
```

Then use it

```
$ docker run -t -i -v $PWD:/srv clermontech-md2pdf INPUT.md OUTPUT.pdf
```
