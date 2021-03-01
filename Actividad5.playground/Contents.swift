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
