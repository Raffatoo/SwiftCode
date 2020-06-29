import UIKit

//Declarando un string
let str01 : String = "Entrecoillas"

// Usando el inicializador
let str02 : String = String("init()")

// Texto en mas de una linea

let str03 : String = """
                    primera linea
                    Segunda linea
                    Tercera linea
                    """
// Mostrando contenido de cadenas
print("\(str01), \(str02), \(str03)")

// Mostrar como vector

//[str01, str02, str03].forEach( {print("\($0)\r\n")})


// Contando caracteres
let str04 : String = " xoloescuincle"

print("\(str04.count)")

// Saber si el string esta vacio

let str05 : String = ""
// El espacio en blanco se toma como la existencia de caracter
print("\(str05.isEmpty)")

// concatenando dos o mas strings
str01 + str04

// convirtiendo un array en un string
let textoLineas: [String] = [
    "Hola mundo",
    "Hola fauna y naturaleza",
    "Hola tierra y otros planetas",
    "Hola tu"
]

var textoCompleto: String = textoLineas.reduce(""){ $0 + " " + $1 }
print(textoCompleto)


//insertar un string dentro de otro estring
var str06: String = " salimos a caminar, "
var str07: String = "Este fin de semana "
var str08: String = " a tu lado seimpre es mejor"

str06.insert(contentsOf: str07, at: str06.startIndex)
print("con principio- \(str06)")

str06.insert(contentsOf: str08, at: str06.endIndex)
print("con final: \(str06)")

if let indice: String.Index = str06.firstIndex(of: ","){
    str06.insert(contentsOf: " por la mañana", at: indice)
    print("todo= \(str06)")
}

// Remplazar un string en otro string
var str09: String = " salimos a cominar"
let str10: String = str09.replacingOccurrences(of: "cominar", with: " caminar")
print("Corrección: \(str10)")

if let range: Range = str09.range(of: " a "){
    str09.replaceSubrange(range, with: " por un caminito al amanecer y a :")
    print("3.- \(str09)")
}

// agregar caracter a la izquierda o derecha de un string

for numero in 1...9 {
    let cadena: String = "\(numero)"
    
    let resultado: String = cadena.padding(toLength: 2, withPad: "1", startingAt: 0)
    print(resultado)
}

// Como se si un string esta a dentro de otro string

let str11: String = "Hola que tal, este dia sera calido y lluvioso por la tarde"

if str11.hasPrefix("Hola")
{
    print("El string comienza por Hola")
}

if str11.hasSuffix("tarde")
{
    print("la ultima palabra es tarde")
}

if str11.contains("calido")
{
    print("contiene la palabra calido")
}

// trabajando cadenas con mayúsculas o minúsculas

let str12: String = "Un viaje es lo único que compras que te hace más rico"

print("Mayusculas: \(str12.uppercased())")
print("Minusculas: \(str12.lowercased())")
print("Primer letra mayuscula: \(str12.capitalized)")

// Quitar caracteres y strings en un string

var str13: String = "Abcdefbghij_klm_nopqrstuwxyZ"

str13.removeFirst()
str13.removeLast()

(str13)

if let range = str13.range(of: "klm_")
{
    str13.removeSubrange(range)
    print("ok- \(str13)")
}

if let index = str13.firstIndex(of: "_")
{
    str13.remove(at: index)
    print("ok- \(str13)")
}

// la función Drop aplicado a un string

let str14: String = "*123456789"

let str15: String = String(str14.dropFirst())
let str16: String = String(str15.dropLast())
print(str16)

// Quitando el numero indicado
let str17: String = String(str14.dropFirst(3))
let str18: String = String(str17.dropLast(3))
print(str18)

// obteniendo un númer determinado de caracteres

let str20: String = "xxxxx123456789"
let xxxxx: String = String(str20.prefix(5))
print(xxxxx)

// Recuperando el contenido de una URL

if let url = URL(string: "https://developer.apple.com/wwdc20/"), let html = try? String(contentsOf: url, encoding: .utf8)
{
    print(html)
}

// Regresar el string a data
let str21: String = "Cadena de texto"
print("A.- \(str21)")

if let data = str21.data(using: .utf8)
{
    print("2. \(data)")
    
    if let dataTexto = String(data: data, encoding: .utf8)
    {
        print("3. \(dataTexto)")
    }
}

// Dividir string split

let str22: String = "Mercurio, Venus, Tierra, Marte, Jupiter, Saturno, Urano, Neptuno, Pluton"

let str23: [Substring] = str22.split(separator: ",")
str23.forEach({print($0)})

let str24: [Substring] = str22.split(separator: ",", maxSplits: 3)
str24.forEach({print($0)})

// Para que se impriman espacios vacios
let str25: [Substring] = str22.split(separator: ",", omittingEmptySubsequences: false)
str25.forEach({print($0)})

// quitar los espacios en blanco de un string
let str26: String = "Mercurio, , Tierra,      Marte,      , Saturno   ,    Urano, , Pluton"

let str27: [Substring] = str26.split(separator: ",")
str27.forEach ({ print("|\($0)|") })

str27.forEach ({
    let str28: String = String($0)
    let str29: String = str28.trimmingCharacters(in: .whitespaces)
    print("|\(str29)|")
})
