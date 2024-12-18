package Aula082;


public class PratoVegetariano extends Prato {

    public PratoVegetariano(String nome) {
        super(nome);
    }

    @Override
    public boolean addIngrediente(Comida a) {
        if (a instanceof ComidaVegetariano) {
            this.getComposicao().add(a);
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return super.toString() + " - Prato Vegetariano";
    }

}