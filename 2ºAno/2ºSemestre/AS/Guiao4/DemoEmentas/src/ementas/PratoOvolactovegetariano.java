package ementas;

public class PratoOvolactovegetariano extends Prato {

	/**
	 * 
	 * @param nome
	 * @param preco
	 */
	public PratoOvolactovegetariano(String nome, double preco) {
		super (nome, preco);


	}

	@Override
    public boolean adicionarIngrediente(Alimento a) {
        if (a instanceof Cereal || a instanceof Legume || a instanceof OvoLacto)
            return super.adicionarIngrediente(a);
        return false;
    }

}