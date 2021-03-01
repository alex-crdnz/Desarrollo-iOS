import UIKit

//clases
class Persona{
    func saludar(nombre:String) -> String {
        return "\(nombre) Mucho gusto"
    }
    func caminar(pasos:Int) -> String {
        if (pasos == 1){
            return "\(pasos) paso caminado"
        }
        else{
            return "\(pasos) pasos caminado"
        }
    }
}
//estructura
struct Pantalla{
    
    var ancho:Int
    var alto:Int
    
    init(ancho:Int, alto:Int) {
        self.alto = alto
        self.ancho = ancho
    }
    func resolucion() -> (Int, Int){
        return (self.ancho, self.alto)
    }
}
//Extensiones
extension Int{
    var horas:Int {
        return self*60*60
    }
}
extension String{
    func dia() -> Int {
        var dia:Int = 0
        switch self {
        case "Domingo":
            dia=1
        case "Lunes":
            dia=2
        case "Martes":
            dia=3
        case "Miercoles":
            dia=4
        case "Jueves":
            dia=5
        case "Viernes":
            dia=6
        case "Sabado":
            dia=7
        default:
            dia = 0
        }
        return dia
    }
}
//Opcional
var opcional:Int?
let dias = ["GDL":120,"PUE":300,"MYT":100,"CDMX":200]
opcional = dias["DF"]

//codigo
var humano = Persona()
print(humano.saludar(nombre: "Andres"))
print(humano.caminar(pasos: 15))

var resolucion = Pantalla(ancho: 1920, alto: 1080)
print("Resolucion \(resolucion.resolucion())")

var h = 25
var d = "Jueves"
print("\(h) horas tiene \(h.horas) segundos")
print("\(d) es el dia numero \(d.dia())")

if opcional == nil {
    print("No exite 'DF' en la coleccion dias")
}
else {
    print("El numero de 'DF' es \(opcional)")
}
