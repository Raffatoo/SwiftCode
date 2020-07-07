import UIKit

// Dado dos string revisar que estring contiene al otro.

func inString (str0A:String, str0B:String) -> String {
    if str0A.contains(str0B){
        return ("'\(str0A)' contiene '\(str0B)'")
    }
    if str0B.contains(str0A){
        return ("'\(str0B)' contiene '\(str0A)'")
    }
    return ("Son diferentes")
}

inString(str0A: "La puerta de Alcala", str0B: "España")

// Codigo Eficiente

func StringInString (str0C:String, str0D:String) -> Bool {
    return str0C.uppercased().contains(str0D.uppercased()) || str0D.uppercased().contains(str0C.uppercased())
}
assert(StringInString(str0C: "La puerta de Alcala", str0D: "España") == true, "Oración Independiente")
