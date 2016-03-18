//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case apagado = 0,
    velocidadBaja = 20,
    velocidadMedia = 50,
    velocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades = .apagado
    
    init(velocidad : Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena : String){
        switch velocidad{
        case .apagado:
            velocidad = .velocidadBaja
        case .velocidadBaja:
            velocidad = .velocidadMedia
        case .velocidadMedia:
            velocidad = .velocidadAlta
        default:
            velocidad = .velocidadMedia
        }
        return (velocidad.rawValue,"\(velocidad)")
    }
}

var auto = Auto(velocidad : Velocidades.apagado)
for i in 0...20{
    print("\(auto.velocidad.rawValue), \(auto.velocidad)")
    auto.cambioDeVelocidad()
}
