package lab03.ex1;

public class JogoDoGalo implements JGaloInterface{
    private final char[][] board = { { ' ', ' ', ' ' }, { ' ', ' ', ' ' }, { ' ', ' ', ' ' } };
    private int turn;
    private final char player1;
    private final char player2;

    public JogoDoGalo(String[] args) {
        this.turn = 0;
        // define os jogadores
        if (args.length == 0){
            this.player1 = 'X';
            this.player2 = 'O';
        } else {
            this.player1 = args[0].charAt(0);
            this.player2 = args[1].charAt(0);
        }
    }

    @Override
    public char getActualPlayer() {
        if (turn % 2 == 0) {
            return player1;
        }
        return player2;
    }

    @Override
    public boolean setJogada(int lin, int col) {
        if (board[lin - 1][col - 1] == ' ') {
            board[lin - 1][col - 1] = getActualPlayer();
            turn++;
            return true;
        }
        return false;
    }

    @Override
    public boolean isFinished() {
        if (turn == 9) {
            return true;
        }
        return checkHorizontal() != ' ' || checkVertical() != ' ' || checkDiagonal() != ' ';
    }

    // Verifica uma linha, coluna ou diagonal
    private char checkLine(int startRow, int startCol, int rowStep, int colStep) {
        // Se as três posições verificadas são iguais e não estão vazias
        if (board[startRow][startCol] == board[startRow + rowStep][startCol + colStep] 
            && board[startRow][startCol] == board[startRow + 2 * rowStep][startCol + 2 * colStep] 
            && board[startRow][startCol] != ' ') {
            // Retorna o valor das posições (o símbolo do jogador)
            return board[startRow][startCol];
        }
        return ' ';
    }
    
    private char checkHorizontal() {
        for (int i = 0; i < 3; i++) {
            char result = checkLine(i, 0, 0, 1);
            if (result != ' ') return result;
        }
        return ' ';
    }
    
    private char checkVertical() {
        for (int i = 0; i < 3; i++) {
            char result = checkLine(0, i, 1, 0);
            if (result != ' ') return result;
        }
        return ' ';
    }
    
    private char checkDiagonal() {
        char result = checkLine(0, 0, 1, 1);
        if (result != ' ') return result;
        return checkLine(0, 2, 1, -1);
    }

    @Override
    public char checkResult() {
        char[] results = {checkHorizontal(), checkVertical(), checkDiagonal()};
        for (char result : results) {
            if (result != ' ') {
                return result;
            }
        }
        return ' ';
    }
}
    

