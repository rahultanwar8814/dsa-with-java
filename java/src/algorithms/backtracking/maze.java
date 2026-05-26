public class maze {

    public static void main(String[] args) {

        int[][] maze = {
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 1, 0},
                {1, 1, 0, 1, 1},
                {0, 0, 0, 0, 0}
        };

        findPth(maze, 0, 0, "");
    }

    public static void findPth(
            int[][] maze,
            int row,
            int column,
            String path
    ) {

        if (row < 0 || column < 0 ||
                row >= maze.length ||
                column >= maze[0].length ||
                maze[row][column] == 1) {

            return;
        }

        // destination
        if (row == 4 && column == 4) {
            System.out.println(path);
            return;
        }

        // visited
        maze[row][column] = 1;

        // Left
        findPth(maze, row, column - 1, path + "L");

        // Right
        findPth(maze, row, column + 1, path + "R");

        // Up
        findPth(maze, row - 1, column, path + "U");

        // Down
        findPth(maze, row + 1, column, path + "D");

        // backtrack
        maze[row][column] = 0;
    }
}