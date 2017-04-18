myIf True isTrue isFalse = isTrue
myIf False isTrue isFalse = isFalse

printer p = print p

main =
    let x = 2
    in myIf (x == 5) (printer "Yup") (printer "Nope")