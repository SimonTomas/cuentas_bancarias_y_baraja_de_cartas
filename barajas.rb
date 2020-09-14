class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

class Baraja
    attr_accessor :cartas
    def initialize
        @cartas = []
        i = 1
        j = 0
        pintas = ["C","D","E","T"]
        13.times do
            pintas.length.times do
                @cartas << Carta.new(i,pintas[j])
                j+=1
            end
            i+=1
            j = 0
        end
    end

    def barajar
        @cartas.shuffle!
    end

    def sacar
        @cartas.pop
    end

    def repartir_mano
        @cartas.pop(5)
    end
end