package Aula08;

    public class PesadoPassageiroEletrico extends PesadoPassageiro implements VeiculoEletrico {
        private int autonomia;
    
        public PesadoPassageiroEletrico(String matricula, String marca, String modelo, int potencia, int numQuadro,
                int peso, int maxPassageiros, int autonomia) {
            super(matricula, marca, modelo, potencia, numQuadro, peso, maxPassageiros);
            this.autonomia = autonomia;
        }
    
        @Override
        public int autonomia() {
            return this.autonomia;
        }
    
        @Override
        public void carregar(int percentagem) {
            if (percentagem + autonomia >= 100) {
                autonomia = 100;
            } else {
                autonomia += percentagem;
            }
        }
    
        @Override
        public String toString() {
            return super.toString() + " PesadoPassageirosEletrico [autonomia=" + autonomia + "]";
        }
    
        @Override
        public int hashCode() {
            final int prime = 31;
            int result = super.hashCode();
            result = prime * result + autonomia;
            return result;
        }
    
        @Override
        public boolean equals(Object obj) {
            if (this == obj)
                return true;
            if (!super.equals(obj))
                return false;
            if (getClass() != obj.getClass())
                return false;
            PesadoPassageiroEletrico other = (PesadoPassageiroEletrico) obj;
            if (autonomia != other.autonomia)
                return false;
            return true && super.equals(obj);
        }
    
        public int getAutonomia() {
            return autonomia;
        }
    
        public void setAutonomia(int autonomia) {
            this.autonomia = autonomia;
        }
    
    }