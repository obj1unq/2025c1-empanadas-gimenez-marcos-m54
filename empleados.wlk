object galvan{
    
    var sueldo = 15000
    var deuda = 0
    var dinero = 0

    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method dinero(){
        return dinero
    }

    method dinero(_dinero){
        dinero = _dinero
    }

    method deuda(){
        return deuda
    }

    method deuda(_deuda){
        deuda = _deuda
    }

    method deudaEsMuyGrande(){
        return self.deuda() > self.dinero()
    }

    method gastar(unMonto){

        if (unMonto > self.dinero()){
            deuda += unMonto - dinero
            self.dinero(0)
        }
        else
            dinero -= unMonto

    }

    method pagarDeudaMenor(){

        dinero -= deuda
        self.deuda(0)
       
    }

    method pagarDeuda(){

        if (self.deudaEsMuyGrande()){
            deuda -= dinero
            self.dinero(0)             
        }
        else
            self.pagarDeudaMenor()

    }



    method cobrarSueldo(){
        dinero += self.sueldo()
        self.pagarDeuda()
    }
}

object baigorria{

    const precioEmp = 15
    var vendidas = 0
    var sueldo = 0


    method sueldo(){
        return sueldo
    }

    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method vendidas(){
        return vendidas
    }

    method vendidas(_vendidas){
        vendidas = _vendidas
    }

    method venta(empanadas){
        vendidas += empanadas
    }

    method totalCobrado(){
        return vendidas * precioEmp

    }
    method cobrarSueldo(){
        sueldo += self.totalCobrado()
        self.vendidas(0)
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

    method gastar(dinero){
        fondo -= dinero
    }

    method pagarSueldo(empleado){
        self.gastar(empleado.sueldo())
        empleado.cobrarSueldo()
    }

}