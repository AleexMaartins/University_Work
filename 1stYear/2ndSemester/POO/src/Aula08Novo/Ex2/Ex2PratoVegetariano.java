package Ex2;


public class Ex2PratoVegetariano extends Ex2Prato {

    public Ex2PratoVegetariano(String nome) {
        super(nome);
    }

    @Override
    public boolean addIngrediente(Ex2Comida a) {
        if (a instanceof Ex2ComidaVegetariano) {
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