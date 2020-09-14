class Usuario
    def initialize(nombre, cuentas)
        raise ArgumentError, 'Debe tener por lo menos una cuenta bancaria' if cuentas.length < 1
        @nombre = nombre
        @cuentas = cuentas
    end
    
    def saldo_total
        total = 0
        @cuentas.each { |cuenta| total += cuenta.saldo }
        return total
    end

end

class CuentaBancaria
    attr_accessor :saldo
    def initialize(banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto,cuenta)
        raise ArgumentError, 'El saldo es insuficiente para realizar la transferencia' if monto > @saldo
        @saldo = @saldo-monto
        cuenta.saldo += monto
    end
end