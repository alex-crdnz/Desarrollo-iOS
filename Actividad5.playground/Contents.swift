import UIKit

//clases
class Persona{
    func salludar(nombre:String) -> String {
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
}
//Extensiones
extension Int{
    var horas:Int {
        return self*24*60
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
//
