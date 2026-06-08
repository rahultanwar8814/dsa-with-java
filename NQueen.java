import java.util.Arrays;

public class NQueen {

    public static void main(String[] args) {

        int n = 4;

        char[][] board = new char[n][n];

        // fill board with '.'
        for (char[] row : board) {
            Arrays.fill(row, '.');
        }

        solve(board, 0);
    }

    public static void solve(char[][] board, int row) {

        // base case
        if (row == board.length) {
            printBoard(board);
            System.out.println();
            return;
        }

        // try placing queen in every column
        for (int col = 0; col < board.length; col++) {

            if (isSafe(board, row, col)) {

                // place queen
                board[row][col] = 'Q';

                // recursive call
                solve(board, row + 1);

                // backtrack
                board[row][col] = '.';
            }
        }
    }

    public static boolean isSafe(char[][] board, int row, int col) {

        // check upper column
        for (int i = row - 1; i >= 0; i--) {

            if (board[i][col] == 'Q') {
                return false;
            }
        }

        // check upper-left diagonal
        for (int i = row - 1, j = col - 1;
             i >= 0 && j >= 0;
             i--, j--) {

            if (board[i][j] == 'Q') {
                return false;
            }
        }

        // check upper-right diagonal
        for (int i = row - 1, j = col + 1;
             i >= 0 && j < board.length;
             i--, j++) {

            if (board[i][j] == 'Q') {
                return false;
            }
        }

        return true;
    }

    public static void printBoard(char[][] board) {

        for (char[] row : board) {

            for (char cell : row) {
                System.out.print(cell + " ");
            }

            System.out.println();
        }
    }
}