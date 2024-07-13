{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Backend.SVG.CmdLine
import Diagrams.Prelude

myCircle :: Diagram B
myCircle = circle 1

myCube :: Diagram B
myCube = hcat [square 1, (vcat . replicate 3 $ square 1) # showOrigin, square 1, square 1]

twoPenta :: Diagram B
twoPenta = (regPoly 5 1 :: Diagram B) === (regPoly 5 1 :: Diagram B) # rotateBy (1 / 2)

threePenta' :: Diagram B
threePenta' = twoPenta # rotateBy (9 / 20) # snugR <> regPoly 5 1 # rotateBy (3 / 20) # snugL

threePenta :: Diagram B
threePenta = twoPenta # rotateBy (13 / 20) ||| regPoly 5 1 # rotateBy (3 / 20)

tetra :: Diagram B
tetra =
    let pair = regPoly 3 1 === regPoly 3 1 # rotateBy (1 / 2)
     in pair # rotateBy (210 / 360) # showOrigin ||| pair # rotateBy (30 / 360)

icosa :: Diagram B
icosa = (vtetra # rotateBy (180 / 360)) ||| vtetra
  where
    vtetra = tetra # rotateBy (-60 / 360)

halfdodeca :: Diagram B
halfdodeca = appends (p # rotateBy (1 / 10)) (zip (iterateN 5 (rotateBy (1 / 5)) unitX) (repeat p))
  where
    p = regPoly 5 1 # rotateBy (3 / 20)

main = mainWith $ icosa # showOrigin
