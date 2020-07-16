import UIKit

func eliminarCaracterRepetido (str: String) -> String{
    var noRepetidas = [Character]()
    for letra in str {
        if !noRepetidas.contains(letra){
            noRepetidas.append(letra)
        }
    }
    return String(noRepetidas)
}

assert(eliminarCaracterRepetido(str: "Helo") == "Helo", "Respueta Mal")
