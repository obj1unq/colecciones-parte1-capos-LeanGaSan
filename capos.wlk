object rolando {

    var limeteDeArtefactos = 2
    const property artefactos = #{}
    const property historialEncontrados = [ ]

    method encontrar(artefacto) {
        historialEncontrados.add(artefacto)
        self.agarrarSiTieneEspacio(artefacto)
    }

    method agarrarSiTieneEspacio(artefacto) {
        if (self.tieneEspacio()) {
            artefactos.add(artefacto)
        }
    }

    method tieneEspacio() {
        return self.cantidadArtefactos() < limeteDeArtefactos
    }

    method cantidadArtefactos() {
        return artefactos.size()
    }

    method llegarA(sitio) {
        sitio.guardar(artefactos)
    }

    method todosSusArtefactos() {
        return artefactos ++ castillo.artefactosGuardados()
    }

    method tiene(artefacto){
        return self.todosSusArtefactos().contains(artefacto)
    }

}

object castillo {
    
    const property artefactosGuardados = #{}

    method guardar(artefactos) {
        artefactosGuardados.addAll(artefactos)
        artefactos.clear()
    }

}

class Artefacto {
  
}