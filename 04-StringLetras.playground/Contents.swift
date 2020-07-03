import UIKit

// Retorna verdadero si las palabras contienen las mimas letras aunque no sean iguales

func twoWords (str01: String, str02: String) -> Bool {
    if str01.count == str02.count {
        print("Igual numero de carateres")
        return true
    }else {
        print("Las palabras no tienen la misma longitud")
        return false
    }
}

assert(twoWords(str01: "Hola", str02: "Hola") == true, "Las palabras no ")
