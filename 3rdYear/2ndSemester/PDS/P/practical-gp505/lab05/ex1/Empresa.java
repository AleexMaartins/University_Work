package lab05.ex1;

import java.util.ArrayList;
import java.util.List;

public class Empresa {
    private String nome;
    private String codigoPostal;
    private String email;
    private List<Viatura> viaturas;

    public static void main(String[] args) { 
    
        Empresa r = new Empresa("Rental", "1234-567", "a@ua.pt"); 
        r.addVeiculo(ViaturaFactory.createMotociclo("00-AB-12", "Honda", "CBR 600", 100, "desportivo")); 
        r.addVeiculo(ViaturaFactory.createAutomovelLigeiro("22-CD-34", "Volkswagen", "Golf", 110, "ABC123456789", 350)); 
        r.addVeiculo(ViaturaFactory.createTaxi("44-EF-56", "Mercedes-Benz", "E-Class", 150, "GHI123     456789", 400, "TAXI123")); 
        r.addVeiculo(ViaturaFactory.createPPEletrico("77-HI-89", "Tesla", "Model X", 500, 2000, "PPE123456789", 50, 100, 200)); 
        r.addVeiculo(ViaturaFactory.createALEletrico("88-IJ-90", "Tesla", "Model 3", 500, "ALE123456789", 500, 1000, 2000)); 
        r.addVeiculo(ViaturaFactory.createPesadoMercadorias("66-GH-78", "Volvo", "FH", 500, "MNO123456789", 20000, 40000)); 
        r.addVeiculo(ViaturaFactory.createPesadoPassageiros("99-JK-00", "Volvo", "FH", 500, 2000, "PPE123456789", 50)); 
    
        for(Viatura v : r.getStock()){ 
            System.out.println(v); 
            System.out.println("");
        } 
    }
    
    private void addVeiculo(Viatura viatura) {
        viaturas.add(viatura);
    }

    public List<Viatura> getStock() {
        return viaturas;
    }

    public Empresa(String nome, String codigoPostal, String email) {
        if (isValidEmail(email)) {
            this.nome = nome;
            this.codigoPostal = codigoPostal;
            this.email = email;
            viaturas = new ArrayList<Viatura>();
        } else {
            throw new UnsupportedOperationException("Invalid email!");
        }
    }

    public Empresa(String nome, String codigoPostal, String email, List<Viatura> viaturas) {
        this(nome, codigoPostal, email);
        this.viaturas = viaturas;
    }

    

    public static boolean isValidEmail(String email) {
        return EmailValidator.isValid(email);
    }

    @Override
    public String toString() {
        return "Empresa [codigoPostal=" + codigoPostal + ", email=" + email + ", nome=" + nome + ", viaturas="
                + viaturas + "]";
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

    public List<Viatura> getViaturas() {
        return viaturas;
    }

    public void setViaturas(List<Viatura> viaturas) {
        this.viaturas = viaturas;
    }

}
