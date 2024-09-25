object camion {
    const cosas = {}
    
    method cargar(unaCosa){
        cosas.add(unaCosa)
    }

    method descargar(unaCosa){
        cosas.remove(unaCosa)
    }

    method peso() {
        return 1000 + cosas.sum({c => c.peso()})
    }

    method sonNumerosImpares(){
        return cosas.all({c => c.peso().odd()})
    }

    method cosaQuePesa(unValor) {
        return cosas.any({c => c.peso() == unValor})
    }

    method nivelDePeligrosidad(unNivelDeDanger){
        return cosas.find({c => c.peligrosidad() == unNivelDeDanger})
    }

    method cosasQueSuperan(unNivelDeDanger){
        return cosas.filter({c => c.peligrosidad() > unNivelDeDanger})
    }

    method estaExcedido() {
        return self.peso() > 2500
    }

    method puedeCircular(nivelDePeligrosidad){
        return not self.estaExcedido() and
               self.todasSonMenosPeligrosas(nivelDePeligrosidad)
    }

    method todasSonMenosPeligrosas(nivelDePeligrosidad) {
        return cosas.all({c => c.peligrosidad() < nivelDePeligrosidad})
    }
}