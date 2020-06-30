import UIKit


// Imprimir cada caracter que conforma una palabra

let str00 = "Soy una cadena"
    for character in str00 {
    print(character)
}

// Mandar un verdadero si la palabra no repite caracteres

func word (str: String) -> Bool {
    var letters = [Character]()
        for letter in str {
            if letters.contains(letter){
                return false
            }
            letters.append(letter)
        }
    return true
}

assert(word(str: "Marino") == true, "La palabra tiene caracteres repetidos")

