package Aula08Novo;

public class Ex1Veiculo implements KmPercorridosInterface {
    private String matricula;
    private String marca;
    private String modelo;
    private int potência; // em cv
    private int ultimoTrajeto; // distância do último trajeto
    private int distanciaTotal; // distância total percorrida

    public Ex1Veiculo(String matricula, String marca, String modelo, int potência){
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potência = potência;
        this.distanciaTotal = 0;
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



    public int getPotência() {
        return potência;
    }



    public void setPotência(int potência) {
        this.potência = potência;
    }



    public int getUltimoTrajeto() {
        return ultimoTrajeto;
    }



    public void setUltimoTrajeto(int ultimoTrajeto) {
        this.ultimoTrajeto = ultimoTrajeto;
    }



    public int getDistanciaTotal() {
        return distanciaTotal;
    }



    public void setDistanciaTotal(int distanciaTotal) {
        this.distanciaTotal = distanciaTotal;
    }



    @Override
    public String toString() {
        return "\n\tVeiculo [matricula = " + matricula + ", marca = " + marca + ", modelo = " + modelo + ", potência = "
                + potência + ", ultimoTrajeto = " + ultimoTrajeto + ", distanciaTotal = " + distanciaTotal + "]";
    }



    @Override
    public void trajeto(int quilometros) {
        this.distanciaTotal += quilometros;
    }

    @Override
    public int ultimoTrajeto() {
        return ultimoTrajeto;
        // código para obter a distância do último trajeto
    }

    @Override
    public int distanciaTotal() {
        return this.distanciaTotal;
    }
}