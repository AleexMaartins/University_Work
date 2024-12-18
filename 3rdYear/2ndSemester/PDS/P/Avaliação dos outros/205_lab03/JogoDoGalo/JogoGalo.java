package lab03.JogoDoGalo;

public class JogoGalo implements JGaloInterface{
    private char[][] tabuleiro;
    private char jogadorAtual;
    private int jogadas;

    public JogoGalo(char jogadorAtual) {
        this.jogadorAtual = jogadorAtual;
        this.tabuleiro = new char[3][3];
        this.jogadas = 0;
    }

    public char getActualPlayer() {
        return this.jogadorAtual;
    }
    
    public boolean setJogada(int lin, int col) {
        if (lin < 1 || lin > 3 || col < 1 || col > 3 || this.tabuleiro[lin - 1][col - 1] != 0) {
            return false;
        }
        if (isFinished()) { return false; }
        this.tabuleiro[lin - 1][col - 1] = getActualPlayer();
        this.jogadas++;
        
        if (checkResult() != ' ') {
            return false;
        }
        
        this.jogadorAtual = (this.jogadorAtual == 'X') ? 'O' : 'X';
        return true;
    }
    

    public boolean isFinished() {
        return this.jogadas == 9 || checkResult() != ' ';
    }

    public char checkResult() {
        if(this.jogadas < 5){return ' ';}
        if(foundWinner()){return this.jogadorAtual;}
        return ' ';
    }

    public boolean foundWinner() {
        for (int i = 0; i < 3; i++) {
            if (tabuleiro[i][0] == this.jogadorAtual && tabuleiro[i][1] == this.jogadorAtual && tabuleiro[i][2] == this.jogadorAtual) {
                return true;
            }
        }

        for (int i = 0; i < 3; i++) {
            if (tabuleiro[0][i] == this.jogadorAtual && tabuleiro[1][i] == this.jogadorAtual && tabuleiro[2][i] == this.jogadorAtual) {
                return true;
            }
        }

        if (tabuleiro[0][0] == this.jogadorAtual && tabuleiro[1][1] == this.jogadorAtual && tabuleiro[2][2] == this.jogadorAtual) {
            return true;
        }

        if (tabuleiro[0][2] == this.jogadorAtual && tabuleiro[1][1] == this.jogadorAtual && tabuleiro[2][0] == this.jogadorAtual) {
            return true;
        }

        return false;
    }
}
