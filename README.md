# ako-diagrams
Haskell Diagrams for AKO dice

If you come up with your own questions for this puzzle, please file an issue!

# WHAT?

I read [Lockhart's Lament](https://en.wikipedia.org/wiki/A_Mathematician%27s_Lament) and got to the part where it says:

> A good problem is something you don’t know how to solve. That’s what makes it a good puzzle, and a good opportunity. A good problem does not just sit there in isolation, but serves as a springboard to other interesting questions.

I realized there might be really cool puzzles within arm's reach!
I looked in my pocket and noticed these dice I had randomly purchased:
![ako-dice](ako-dice.jpg?raw=true) (credit to [Kacha](https://www.kickstarter.com/projects/kacha/ako-dice) and now [AKO Dice](https://www.ako-dice.com/) for making these)

Ok, what's special about this particular arrangement of grooves on the faces of this cube?

Each groove contributes to the sum of the numbers on each side. Each groove crosses the edge between faces. This die follows the convention that opposite sides add up to seven. All of the grooves are on exactly two faces, except one groove? Why?

Much later, someone pointed out to me that the sum of the values on a six sided die is 6 + 5 + 4 + 3 + 2 + 1, or equivalently, three times seven, since we know each pair of opposite sides sums to seven.

This same person pointed out to me that if the grooves only contributed to two faces, they would add up to an even number, and the sum of sides is not even!

Neato!

## Is this the only pattern of grooves?

Can I find different 'valid' patterns of grooves? (yes)

## Is this the only shape?

Does this work for a four sided die? (yes)

Is there more than one valid layout for the four sided die? (yes)

What are the valid layouts? (I'll have them visible in this README when I finish the code)

Does this work for a twelve sided die? What about twenty sides? (don't know yet!)

What about four dimensional shapes? (I bet Schläfli and Coxeter know, but I don't - yet)

# More random questions

- Are these dice balance and fair?
  They can't be unless the groove depth is controlled to balance the weight.
- What math should I learn to generate all valid layouts in all dimensions?
  Wait, that's *my* question!

# how to run
`cabal run exes -- -o foo.svg -w 400`

# TODO
- [X] tetrahedron
- [X] cube
  still needs better layout
  ![cube](cube.svg?raw=true)
- [ ] dodecahedron
  halfway, just need to rotate and compose a copy of the first half
  ![dodecahedron](dodeca-half.svg?raw=true)
- [ ] icosahedron
  progress, need to compose a few more tetrahedrons
  ![icosahedron](icosa.svg?raw=true)
- [ ] grooves
  no idea how to even start on this!
