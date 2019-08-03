This ruby script runs in command line to get touring dates and venues of a theater play from [Théâtre contemporain](www.theatre-contemporain.net).
It takes one argument passed manually in the command line and prints the title of the play, its known touring dates and venues in the terminal

#### Steps to follow

1. copy the repo
2. bundle install
3. run the script followed by the argument

#### Example 

For the show **Celui qui tombe** (https://www.theatre-contemporain.net/spectacles/Celui-qui-tombe/)

run `ruby print_each_piece.rb Celui-qui-tombe`

The result will be
```
Celui qui tombe
2019/12/28 - 01/11 Le CentQuatre #104 ParisThéâtre de la Ville - Paris (Paris)
2020/05/05 - 05/06 La Comédie de Saint-Etienne (Saint-Etienne)
```
#### Limites
* Can only do one play each time
* Will need to manually copy-paste the printed result in terminal somewhere 
* When a show has only one date in a certain venue, this result is not shown

#### Notes
* The web site obviously only have shows that are once put on in France
* The date is formatted YYYY/MM/DD, which is **not** a French convention
* The argument is case-insensitive
