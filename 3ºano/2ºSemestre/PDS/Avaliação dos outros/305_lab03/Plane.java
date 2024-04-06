public class Plane {
    private int[][] executiveSeats;
    private int[][] touristSeats;
    private boolean hasExecutive;

    public Plane(String executiveSeats, String touristSeats) {
        this.executiveSeats = getMatrix(executiveSeats);
        this.touristSeats = getMatrix(touristSeats);
        this.hasExecutive = true;
    }

    public Plane(String touristSeats) {
        this.touristSeats = getMatrix(touristSeats);
        this.hasExecutive = false;
    }

    public int[][] getExecutiveSeats() {
        return executiveSeats;
    }

    public int[][] getTouristSeats() {
        return touristSeats;
    }

    public boolean hasExecutive() {
        return hasExecutive;
    }

    public void setExecutiveSeats(int[][] executiveSeats) {
        this.executiveSeats = executiveSeats;
    }

    public void setTouristSeats(int[][] touristSeats) {
        this.touristSeats = touristSeats;
    }

    public int getExecutiveCapacity() {
        return hasExecutive ? this.executiveSeats.length * this.executiveSeats[0].length : 0;
    }

    public int getTouristCapacity() {
        return this.touristSeats.length * this.touristSeats[0].length;
    }

    public int getOccupiedExecutiveSeats() {
        int occupied = 0;

        for (int i = 0; i < this.executiveSeats.length; i++) {
            for (int j = 0; j < this.executiveSeats[0].length; j++) {
                if (this.executiveSeats[i][j] != 0) {
                    occupied++;
                }
            }
        }

        return occupied;
    }

    public int getOccupiedTouristSeats() {
        int occupied = 0;

        for (int i = 0; i < this.touristSeats.length; i++) {
            for (int j = 0; j < this.touristSeats[0].length; j++) {
                if (this.touristSeats[i][j] != 0) {
                    occupied++;
                }
            }
        }

        return occupied;
    }

    private int[][] getMatrix(String size) {
        int row = Integer.parseInt(size.split("x")[0]);
        int col = Integer.parseInt(size.split("x")[1]);
        int[][] matrix = new int[row][col];
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                matrix[i][j] = 0;
            }
        }
        return matrix;
    }
}
