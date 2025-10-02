object tom {
  var energia = 50
  method consumoEnergia(metros) = metros / 2
  method velocidadMaxima() = 5 + (energia / 10) 

  method correr(metros){
    energia -= self.consumoEnergia(metros)
  }

  method comer(raton){
    energia += 12 + raton.peso()
  }

  method puedeCazar(distancia){
    return(energia >= self.consumoEnergia(distancia))
  }

  method cazar(raton, distancia){
    if(self.puedeCazar(distancia)) {
        self.correr(distancia)
        self.comer(raton)
    }
  }
}

object jerry {
  var edad = 2
  method peso() = edad * 2

  method cumplirAños(){
    edad += 1
  }
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón