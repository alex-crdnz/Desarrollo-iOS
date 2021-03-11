import UIKit

prefix operator ^
prefix func ^(numero:Int) -> Int{
    var c:Int = 1
    for _ in 1...numero{
        c = c * numero
    }
    return c
}

print(^3)

prefix operator +++
prefix func +++(numero:Array<Int>) -> Array<Int>{
    return numero.sorted()}

var numeros:Array<Int> = Array<Int>()
numeros.append(2)
numeros.append(5)
numeros.append(3)
numeros.append(4)
numeros = +++numeros
print(numeros)

class Multiplicar{
    var valores:[Int]
    init(v:[Int]) {
        self.valores = v
    }
    subscript (index:Int) -> Int{
        get{
            return valores[index]
        }
        set{
            valores[index] = valores[index]*2
        }
    }
}

let mult = Multiplicar (v:numeros)
print(mult[2])

class Enemigos{
    var valores1:Float
    var valores2:Float
    init(v:Float, v2:Float) {
        self.valores1 = v
        self.valores2 = v2
    }
    subscript (c1:Float,c2:Float) -> (Float,Float){
        struct CGPoint {
            var latitud:Float
            var longitud:Float
            
            init(latitud:Float,longitud:Float){
                self.latitud = latitud
                self.longitud = longitud
            }
            func coordenadas() -> (Float,Float){
                return (self.latitud,self.longitud)
            }
            
        }
        return CGPoint(latitud:c1,longitud: c2).coordenadas()
    }
}
let en = Enemigos(v: 1236.56, v2: 15365.3)
print(en)


let coleccion = ["A":1,"B":2,"C":3]

func ExisteValor(a:String){
    guard let valor = coleccion[a] else {
        print("No existe")
        return }
    print("Existe \(valor)")
}
ExisteValor(a: "A")
ExisteValor(a: "Z")
