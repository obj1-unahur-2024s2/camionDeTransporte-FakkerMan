object cosas {

}

object knight_rider{
    method peso() = 500
    method peligrosidad() = 15
    method bultos() = 1
}

object bumblebee {
    var estaTransformadoEnRobot = true
    var peligrosidad = 15

    method peso() = 800

    method peligrosidad(){
        if (estaTransformadoEnRobot)
            return 30
        else
            return 15
    }

    method trasnformar() {
        estaTransformadoEnRobot = not estaTransformadoEnRobot
    }

    method bultos() = 2
}

object paqueteDeLadrillos {
    var property cantidad = 0
    method peso()= 2 * cantidad
    method peligrosidad() = 2
    
    method cantidadDeLadrillos(numero) {
        peso = peso + numero * 2
    }
}

object arenaAGranel {
    var property peso = 0 
    method peligrosidad() = 1
    method bultos() = 1
}

object bateriaAntiaerea {
    var property estaCargada = true
    var peso = 300
    var peligrosidad = 100
    method peso() = if (estaCargada) 300 else 200 /* Ternaria */
    method peligrosidad()= if (estaCargada) 100 else 0 /* Ternaria */

    method cargar(){
        estaCargada = true
    }

    method descargar() {
        estaCargada = false
    } 
}

object contenedor {
    const cosas = {}
    method agregarCosas(unaCosa){
        cosas.add(unaCosa)
    }

    method peso() {
        return 100 + cosas.sum({ c => c.peso()})
    }

    method peligrosidad() {
        if (cosas.isEmpty()) return 0
        return cosas.max({ c => c.peligrosidad()}).peligrosidad()
    }
}

object residuos {
    var property peso = 0
    method peligrosidad() = 200 
    method bultos() = 1
}

object embalajeDeSeguridad {
    var property  cosaEnvuelta = cosaEnVuelta
    method peso() = cosaEnvuelta.peso()
    method peligrosidad() = cosaEnvuelta.peligrosidad() 
    method bultos() = 2
      
}

object cosaEnVuelta {
    method peso() = 0
    method peligrosidad() = 0   
}
