import UIKit

// Leer una palabra de izquierda a derecha y de derecha a izquierda si se lee igual es un palíndromo
// Ejemplos Ala, Arepera, Ojo, Rotor, Radar, Seres, Somos

func palindromo (str01: String) -> Bool {
    let str001 = Array(str01)
    let str100 = Array(str01.reversed())
    
    return str001 == str100
}

assert(palindromo(str01: "rotor") == true, "No es un palíndromo")
