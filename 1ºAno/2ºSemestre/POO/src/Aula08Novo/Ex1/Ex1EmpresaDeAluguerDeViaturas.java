package Aula08Novo;
import java.util.ArrayList;
public class Ex1EmpresaDeAluguerDeViaturas {
    private String nome;
    private String codigoPostal;
    private String email;
    private ArrayList <Ex1Veiculo> veiculos ;

    public Ex1EmpresaDeAluguerDeViaturas(String nome, String codigoPostal, String email){
        this.nome = nome;
        this.codigoPostal = codigoPostal;
        this.email = email;
        this.veiculos = new ArrayList <>();
    }

    public void addVeiculo(Ex1Veiculo v){
        veiculos.add(v);
    }

    public ArrayList<Ex1Veiculo> getVeiculos() {
        return veiculos;
    }

    public Ex1Veiculo getVeiculoComMaiorQuilometragem(){
        Ex1Veiculo v = veiculos.get(0);
        for (Ex1Veiculo veiculo : veiculos) {
            if (veiculo.getDistanciaTotal() > v.getDistanciaTotal()) {
                v = veiculo;
            }
        }
        return v;
    }

    public String getNome() {
        return nome;
    }


    public void setNome(String nome) {
        this.nome = nome;
    }


    public String getCodigoPostal() {
        return codigoPostal;
    }


    public void setCodigoPostal(String codigoPostal) {
        this.codigoPostal = codigoPostal;
    }


    public String getEmail() {
        return email;
    }


    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Empresa de Aluguer de Viaturas {" + veiculos + ", \nnome = " + nome + ", \ncodigoPostal = "
                + codigoPostal + ", \nemail = " + email + "}";
    }

}
