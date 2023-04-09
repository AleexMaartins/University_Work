package Ex2;

public class Ex2 {
    
	public static void main(String[] args) {
		Ex2Ementa ementa = new Ex2Ementa("Especial Primavera", "Snack da UA");
		Ex2Prato[] pratos = new Ex2Prato[Ex2DiaSemana.values().length];
		for (int i = 0; i < pratos.length; i++) {
			pratos[i] = randPrato(i + 1);
			System.out.println("A sair .. " + pratos[i]);

			// Adiciona 2 ingredientes a cada prato
			int ingred = 1;
			do {
				Ex2Comida aux = randAlimento();
				if (pratos[i].addIngrediente(aux)) {
					System.out.println("\tIngrediente " + ingred + " adicionado: " + aux);
					ingred++;
				} else
					System.out.println("\tERRO: não é possível adicionar Ingrediente " + ingred + ": " + aux);
			} while (ingred < 3);

			ementa.addPrato(pratos[i], Ex2DiaSemana.getEnum(i));
		}
		System.out.println("\nEmenta final\n--------------------");
		System.out.println(ementa);
	}

	public static Ex2Comida randAlimento() {
		Ex2Comida res = null;
		switch ((int) (Math.random() * 4)) {
			case 0:
				res = new Ex2Carne(Ex2VariedadeCarne.FRANGO, 22.3, 345.3, 300);
				break;
			case 1:
				res = new Ex2Peixe(Ex2TipoPeixe.CONGELADO, 31.3, 25.3, 200);
				break;
			case 2:
				res = new Ex2Legumes("Couve Flor", 21.3, 22.4, 150);
				break;
			case 3:
				res = new Ex2Cereal("Milho", 19.3, 32.4, 110);
				break;
		}
		return res;
	}

	public static Ex2Prato randPrato(int i) {
		Ex2Prato res = null;
		switch ((int) (Math.random() * 3)) {
			case 0:
				res = new Ex2Prato("combinado n." + i);
				break;
			case 1:
				res = new Ex2PratoVegetariano("combinado n." + i);
				break;
			case 2:
				res = new Ex2PratoDieta("combinado n." + i, 90.8);
				break;
		}
		return res;
	}

}