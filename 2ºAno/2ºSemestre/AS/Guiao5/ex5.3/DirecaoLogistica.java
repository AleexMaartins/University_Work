import java.util.ArrayList;
import java.util.List;

public class DirecaoLogistica {
    private List<Estafeta> estafetas;

    public DirecaoLogistica() {
        this.estafetas = new ArrayList<>();
    }

    public void adicionarEstafeta(Estafeta estafeta) {
        this.estafetas.add(estafeta);
    }

    public void removerEstafeta(Estafeta estafeta) {
        this.estafetas.remove(estafeta);
    }

    public void aprovarCandidatura(Estafeta estafeta) {
        estafeta.setAprovado(true);
    }

    public void suspenderParceria(Estafeta estafeta) {
        estafeta.setAtivo(false);
    }

    public void cancelarParceria(Estafeta estafeta) {
        this.removerEstafeta(estafeta);
    }

    public static void main(String[] args) {
        DirecaoLogistica direcaoLogistica = new DirecaoLogistica();
        Estafeta estafeta1 = new Estafeta();
        direcaoLogistica.adicionarEstafeta(estafeta1);
        direcaoLogistica.aprovarCandidatura(estafeta1);
        direcaoLogistica.suspenderParceria(estafeta1);
        direcaoLogistica.cancelarParceria(estafeta1);
    }

    private static class Estafeta {
        private boolean aprovado;
        private boolean ativo;

        public Estafeta() {
            this.aprovado = false;
            this.ativo = false;
        }

        public boolean isAprovado() {
            return aprovado;
        }

        public void setAprovado(boolean aprovado) {
            this.aprovado = aprovado;
        }

        public boolean isAtivo() {
            return ativo;
        }

        public void setAtivo(boolean ativo) {
            this.ativo = ativo;
        }

        public void terminarAdesao() {
            this.ativo = false;
        }
    }
}
