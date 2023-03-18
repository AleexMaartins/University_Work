package Aula05Novo;

public class Ex3 {
    private Ex3Imoveis[] imoveis;
    private int nImoveis;

    public Ex3(int nImoveis){
        this.imoveis = new Ex3Imoveis[nImoveis];
        this.nImoveis = 0;
    }

    public void addImovel(Ex3Imoveis im){
        if(nImoveis < imoveis.length){
            imoveis[nImoveis] = im;
            nImoveis++;
        }
    }

    public void removeImovel(int number){
        for(int i = 0; i < nImoveis; i++){
            if(imoveis[i].getNumber() == number){
                imoveis[i] = imoveis[nImoveis - 1];
                nImoveis--;
                break;
            }
        }
    }

    public void listImoveis(){
        for(int i = 0; i < nImoveis; i++){
            System.out.println(imoveis[i].getNumber() + " " + imoveis[i].getLocal() + " " + imoveis[i].getPrice() + " " + imoveis[i].getQuartos() + " " + imoveis[i].getDisponivel());
        }
    }

    public boolean isOnList(int number){
        for(int i = 0; i < nImoveis; i++){
            if(imoveis[i].getNumber() == number){
                return true;
            }
        }
        return false;
    }

    public String existeImovel(int number){
        if(!isOnList(number)){
            return "Imonvel " + number + " existe.";
        }else{
            return "Imonvel " + number + " não existe.";
        }
    }


    public String dispImovel(int number){
        if(Ex3Imoveis.getDisponivel()!= true ){
            return "Imonvel " + number + " está disponivel.";
        }else{
            return "Imonvel " + number + " não está disponível.";
        }
    }
    
}
    public static void main(String[] args) {
        
        
        //criar os imoveis
        Ex3Imoveis im1 = new Ex3Imoveis(2,"Glória",30000, true);
        Ex3Imoveis im2 = new Ex3Imoveis(1,"Vera Cruz",25000, false);
        Ex3Imoveis im3 = new Ex3Imoveis(3,"Santa Joana",32000, true);
        Ex3Imoveis im4 = new Ex3Imoveis(2,"Aradas",24000, true);
        Ex3Imoveis im5 = new Ex3Imoveis(2,"São Bernardo",20000, true);
        

        //criar o array
        // Imoveis[] imoveis = new Imoveis[5];
        // imoveis[0] = im1;
        // imoveis[1] = im2;
        // imoveis[2] = im3;
        // imoveis[3] = im4;
        // imoveis[4] = im5;


        //imprimir os imoveis
          

        
        }
}