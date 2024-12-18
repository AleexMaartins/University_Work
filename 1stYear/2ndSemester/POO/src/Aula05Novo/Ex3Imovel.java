package Aula05Novo;

public class Ex3Imovel {
    private static int proximoId = 1000;
    
    private int id;
    private int numQuartos;
    private String localidade;
    private double preco;
    private boolean disponivel;
    private Ex3Date dataInicioLeilao;
    private Ex3Date dataFimLeilao;
    
    public Ex3Imovel(int numQuartos, String localidade, double preco, boolean disponivel, Ex3Date dataInicioLeilao, Ex3Date dataFimLeilao) {
        this.id = proximoId++;
        this.numQuartos = numQuartos;
        this.localidade = localidade;
        this.preco = preco;
        this.disponivel = disponivel;
        this.dataInicioLeilao = dataInicioLeilao;
        this.dataFimLeilao = dataFimLeilao;
    }
    
    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
  
    public int getNumQuartos() {
        return numQuartos;
    }

    public void setNumQuartos(int numQuartos) {
        this.numQuartos = numQuartos;
    }

    public String getLocalidade() {
        return localidade;
    }

    public void setLocalidade(String localidade) {
        this.localidade = localidade;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public boolean isDisponivel() {
        return disponivel;
    }

    public void setDisponivel(boolean disponivel) {
        this.disponivel = disponivel;
    }

    public Ex3Date getDataInicioLeilao() {
        return dataInicioLeilao;
    }

    public void setDataInicioLeilao(Ex3Date dataInicioLeilao) {
        this.dataInicioLeilao = dataInicioLeilao;
    }

    public Ex3Date getDataFimLeilao() {
        return dataFimLeilao;
    }

    public void setDataFimLeilao(Ex3Date dataFimLeilao) {
        this.dataFimLeilao = dataFimLeilao;
    }
    
    // toString method
    public String toString() {
        return "Imovel [id=" + id + ", numQuartos=" + numQuartos + ", localidade=" + localidade + ", preco=" + preco + ", disponibilidade=" + disponivel + ", dataInicioLeilao=" + dataInicioLeilao + ", dataFimLeilao=" + dataFimLeilao + "]";
    }
}
