object galvan{
    
    var sueldo = 15000

    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){
        sueldo = _sueldo
    }


}

object baigorria{

    var vendidas = 0
    var sueldo = 0
    const precioEmp = 15
    
    method cobrarSueldo(){
        sueldo += self.calculoSueldo()
        self.vendidas(0)
    }

    method totalCobrado(){
        return sueldo
    }

    method vendidas(){
        return vendidas
    }

    method vendidas(_vendidas){
        vendidas = _vendidas
    }

    method calculoSueldo(){
        return vendidas * precioEmp
    }

    method venta(empanadas){
        vendidas += empanadas
    }

}

object gimenez{
    
    var fondo = 300000

    method fondo(){
        return fondo
    }

    method fondo(_fondo){
        fondo = _fondo
    }

    method pagarSueldo(empleado){
        fondo -= empleado.sueldo()
        empleado.cobrarSueldo()
    }

}