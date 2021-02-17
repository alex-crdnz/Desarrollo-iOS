import UIKit
var a:Int = 1
var b:Float = 1.5
var c = 1
var cadena:String = "Hello World"
a = a + 1
b = b + 1
c = Int(b) + a
var numeros:Array<Int> = Array<Int>()
var semana:Dictionary<Int, String> = Dictionary<Int, String>()
numeros.append(1)
numeros.append(2)
numeros.append(3)
numeros.append(4)
numeros.append(5)
numeros.append(6)
numeros.append(7)
numeros.append(8)
numeros.append(9)
numeros.append(10)
semana [1] = "Lunes"
semana [2] = "Martes"
semana [3] = "Mieroles"
semana [4] = "Jueves"
semana [5] = "Viernes"
semana [6] = "Sabado"
semana [7] = "Domingo"
print("Variables: \(a), \(b), \(c), \(cadena)")
print("Array: \(numeros)")
print("Semana: \(semana.values)")
