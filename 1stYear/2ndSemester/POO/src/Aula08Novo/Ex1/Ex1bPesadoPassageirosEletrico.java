package Aula08Novo;

public class Ex1bPesadoPassageirosEletrico extends Ex1PesadoPassageiros implements Ex1bVeiculoEletrico {
        private int cargaAtual;
        private final int capacidadeBateria;
    
        public Ex1bPesadoPassageirosEletrico(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int peso, int numeroMaximoPassageiros, int capacidadeBateria) {
            super(matricula, marca, modelo, potencia, numeroQuadro, peso, numeroMaximoPassageiros);
            this.cargaAtual = capacidadeBateria;
            this.capacidadeBateria = capacidadeBateria;
        }
    
        @Override
        public int autonomia() {
            // Autonomia = carga atual / consumo médio por km
            int consumoMedio = 2; // assumindo consumo médio de 2% por km
            return (cargaAtual / consumoMedio) * 100; // retorna a autonomia em km
        }
    
        @Override
        public void carregar(int percentagem) {
            cargaAtual = Math.min(capacidadeBateria, cargaAtual + percentagem);
        }
    
        @Override
        public String toString() {  
            return String.format("Pesado de passageiros elétrico - %s | Autonomia: %d km | Carga atual: %d%%", super.toString(), autonomia(), cargaAtual);
        }
    }
    