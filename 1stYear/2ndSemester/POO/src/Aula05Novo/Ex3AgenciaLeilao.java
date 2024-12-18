package Aula05Novo;

import java.util.ArrayList;
import java.util.List;

public class Ex3AgenciaLeilao {
    private List<Ex3Imovel> imoveis;

    public Ex3AgenciaLeilao() {
        this.imoveis = new ArrayList<>();
    }

    public void cadastrarImovel(Ex3Imovel imovel) {
        imovel.setId(this.imoveis.size() + 1000);
        this.imoveis.add(imovel);
    }

    public void removerImovel(Ex3Imovel imovel) {
        this.imoveis.remove(imovel);
    }

    public List<Ex3Imovel> getImoveis() {
        return this.imoveis;
    }

    public List<Ex3Imovel> buscarPorLocalidade(String localidade) {
        List<Ex3Imovel> imoveisEncontrados = new ArrayList<>();
        for (Ex3Imovel imovel : this.imoveis) {
            if (imovel.getLocalidade().equals(localidade)) {
                imoveisEncontrados.add(imovel);
            }
        }
        return imoveisEncontrados;
    }

    public List<Ex3Imovel> buscarPorPreco(double precoMaximo) {
        List<Ex3Imovel> imoveisEncontrados = new ArrayList<>();
        for (Ex3Imovel imovel : this.imoveis) {
            if (imovel.getPreco() <= precoMaximo) {
                imoveisEncontrados.add(imovel);
            }
        }
        return imoveisEncontrados;
    }

    public List<Ex3Imovel> buscarPorDisponibilidade(boolean disponivel) {
        List<Ex3Imovel> imoveisEncontrados = new ArrayList<>();
        for (Ex3Imovel imovel : this.imoveis) {
            if (imovel.isDisponivel() == disponivel) {
                imoveisEncontrados.add(imovel);
            }
        }
        return imoveisEncontrados;
    }

    public List<Ex3Imovel> buscarPorDataLeilao(Ex3Date dataInicio, Ex3Date dataFim) {
        List<Ex3Imovel> imoveisEncontrados = new ArrayList<>();
        for (Ex3Imovel imovel : this.imoveis) {
            Ex3Date inicioLeilao = imovel.getDataInicioLeilao();
            Ex3Date fimLeilao = imovel.getDataFimLeilao();
            if (inicioLeilao != null && fimLeilao != null && inicioLeilao.compareTo(dataInicio) >= 0 
                    && fimLeilao.compareTo(dataFim) <= 0) {
                imoveisEncontrados.add(imovel);
            }
        }
        return imoveisEncontrados;
    }
}
