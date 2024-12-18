public class JGaloImplementation implements JGaloInterface {
    private char[][] board;
    private boolean isPlayerX;
    private int jogadas;

    public JGaloImplementation() {
        this.board = new char[3][3];
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                board[i][j] = ' ';
            }
        }
        this.isPlayerX = true;
        this.jogadas = 0;
    }

    public JGaloImplementation(char firstPlayer) {
        this.board = new char[3][3];
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                board[i][j] = ' ';
            }
        }
        this.isPlayerX = firstPlayer == 'X';
        this.jogadas = 0;
    }

    public char getActualPlayer() {
        return isPlayerX ? 'X' : 'O';
    }

    public boolean setJogada(int lin, int col) {
        if (lin < 1 || lin > 3 || col < 1 || col > 3) {
            return false;
        }
        if (board[lin - 1][col - 1] != ' ') {
            return false;
        }
        board[lin - 1][col - 1] = isPlayerX ? 'X' : 'O';
        isPlayerX = !isPlayerX;
        jogadas++;
        return true;
    }

    public boolean isFinished() {
        return checkResult() != ' ' || jogadas == 9;
    }

    public char checkResult() {
        for (int i = 0; i < 3; i++) {
            if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != ' ') {
                return board[i][0];
            }
            if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != ' ') {
                return board[0][i];
            }
        }

        if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != ' ') {
            return board[0][0];
        }

        if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != ' ') {
            return board[0][2];
        }

        return ' ';
    }
}
