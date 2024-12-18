package Aula08;

abstract class Veiculo implements KmPercorridosInterface {
    private String matricula;
    private String marca;
    private String modelo;
    private int potencia;
    private int ultimaViagem;// nr de km percorridos na ultima viagem
    private int total;// nr de km percorridos no total

    Veiculo(String matricula, String marca, String modelo,
            int potencia) {
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        this.ultimaViagem = 0;

    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getPotencia() {
        return potencia;
    }

    public void setPotencia(int potencia) {
        this.potencia = potencia;
    }
    @Override
    public void trajeto(int ultimaViagem) {
        this.total += ultimaViagem;
        this.ultimaViagem = ultimaViagem;
    }
    @Override
    public int ultimoTrajeto() {
        return this.ultimaViagem;
    }
    @Override
    public int distanciaTotal() {
        return this.total;
    }
    @Override
    public String toString() {
        return "Viatura [kmPercorridos=" + total + ", marca=" + marca + ", matricula=" + matricula + ", modelo="
                + modelo + ", potencia=" + potencia + ", ultimoTrajeto=" + ultimaViagem + "] ";
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + total;
        result = prime * result + ((marca == null) ? 0 : marca.hashCode());
        result = prime * result + ((matricula == null) ? 0 : matricula.hashCode());
        result = prime * result + ((modelo == null) ? 0 : modelo.hashCode());
        result = prime * result + potencia;
        result = prime * result + ultimaViagem;
        return result;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Veiculo other = (Veiculo) obj;
        if (total != other.total)
            return false;
        if (marca == null) {
            if (other.marca != null)
                return false;
        } else if (!marca.equals(other.marca))
            return false;
        if (matricula == null) {
            if (other.matricula != null)
                return false;
        } else if (!matricula.equals(other.matricula))
            return false;
        if (modelo == null) {
            if (other.modelo != null)
                return false;
        } else if (!modelo.equals(other.modelo))
            return false;
        if (potencia != other.potencia)
            return false;
        if (ultimaViagem != other.ultimaViagem)
            return false;
        return true;
    }
    public int compareTo(Veiculo v){
        return this.potencia - v.getPotencia();
    }

}
