import UIKit

//impuestos
//valor por tipo y por referencia:
var costo_referencia:[Float] = [8.3,10.5,9.9]
for i in costo_referencia{
  print(i*1.16)
}
func impuesto(coleccion:[Float]) -> [Float]{
  let result:[Float] = coleccion.map{a in return a * 1.16}
  return result
}
print("La cantidad con impuestos de: \(costo_referencia) es: \(impuesto(coleccion:costo_referencia))")

func sumaTres(a:Int, b:Int) -> Int{
  return a + b
}
print(sumaTres(a:sumaTres(a:10,b:20), b:15))
//funciones personalizadas y genéricos
func intercambio<T>(a:T, b:T) -> (T,T){
  let c = a
  let d = b
  return (d, c)
}
print("El intercambio de 6 y 7 es: \(intercambio(a:6, b:7))")
var datos = [3,7,9,2]
func Transformar(coleccion:[Int]) -> [Int]{
  let result:[Int] = coleccion.map{a in return a * a}
  return result
}
print(Transformar(coleccion:datos))
// librería de Swift
var precios = [4.2, 5.3, 8.2, 4.5]
let impuestos = precios.map{a in return a * 1.16}
print(impuestos)
let precio_menor = impuestos.filter{a in a > 6}
print(precio_menor)
