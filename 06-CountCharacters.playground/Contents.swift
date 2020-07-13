import UIKit

// creamos la función para contar el numero de caracteres de la cadena dada.
func numCharacter (str0A: String) -> Int {
    var letras = 0;
    for _ in str0A {
        letras += 1
    }
    return letras
}

numCharacter(str0A: "Hola esto es una prueba contando numero de caracteres")
