package Aula08Novo;

public class Ex1bAutomovelLigeiroEletrico extends Ex1AutomovelLigeiro implements Ex1bVeiculoEletrico {

        private int cargaAtual;
        private int capacidadeBateria;
    
        public Ex1bAutomovelLigeiroEletrico(String matricula, String marca, String modelo, int potencia, String numeroQuadro, int capacidadeBagageira, int capacidadeBateria) {
            super(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);
            this.capacidadeBateria = capacidadeBateria;
            this.cargaAtual = capacidadeBateria;
        }
    
        public int getCapacidadeBateria() {
            return capacidadeBateria;
        }
        
        public void setCapacidadeBateria(int capacidadeBateria) {
            this.capacidadeBateria = capacidadeBateria;
        }
    
        public int getCargaAtual() {
            return cargaAtual;
        }
    
        public void setCargaAtual(int cargaAtual) {
            if (cargaAtual < 0) {
                cargaAtual = 0;
            }
            if (cargaAtual > capacidadeBateria) {
                cargaAtual = capacidadeBateria;
            }
            this.cargaAtual = cargaAtual;
        }
        
    
        @Override
        public int autonomia() {
            return cargaAtual * 10; // cada 1% de carga corresponde a 10 km de autonomia
        }
    
        @Override
        public void carregar(int percentagem) {
            setCargaAtual(cargaAtual + percentagem);
        }
    
        @Override
        public String toString() {
            return "Automóvel ligeiro elétrico " + super.toString() + " (Carga atual: " + cargaAtual + "/" + capacidadeBateria + " kWh)";
        }

        
    
}
