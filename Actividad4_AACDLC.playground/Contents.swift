import UIKit
//ciclos y condicionales
var datos = [3,6,9,2,4,1]
for i in datos{
    if(i < 5){
        print(i)
    }
}
//funciones suma y potencia
var a:Int = 3, b:Int = 15

func suma(a:Int, b:Int) -> Int{
    return a+b
}

func potencia(a:Int, b:Int) -> Int{
    var c:Int = 1
    for _ in 1...b {
        c = (c * a)
    }
    return c
}

print("La suma de \(a) + \(b) es: \(suma(a:a,b:b))")
print("\(a) con potencia \(b) es: \(potencia(a:a,b:b))")
//Enumeracion
enum meses{
    case Enero
    case Febrero
    case Marzo
    case Abril
    case Mayo
    case Junio
    case Julio
    case Agosto
    case Septiembre
    case Octubre
    case Noviembre
    case Diciembre
}
var mes:meses = meses.Diciembre

func numeroMes(mes:meses) -> Int{
    var nmes:Int
    switch mes {
    case .Enero:
        nmes = 1
    case .Febrero:
        nmes = 2
    case .Marzo:
        nmes = 3
    case .Abril:
        nmes = 4
    case .Mayo:
        nmes = 5
    case .Junio:
        nmes = 6
    case .Julio:
        nmes = 7
    case .Agosto:
        nmes = 8
    case .Septiembre:
        nmes = 9
    case .Octubre:
        nmes = 10
    case .Noviembre:
        nmes = 11
    case .Diciembre:
        nmes = 12
    default:
        nmes = 0
    }
    return nmes
}

print("El numero de mes de \(mes) es: \(numeroMes(mes:mes))")
