public class StandardShippingCostCalculator implements ShippingCostCalculator {
    @Override
    public double calculateShippingCost(Package pkg) {
        double weight = pkg.getWeight();
        if (weight < 5) {
            return (int) weight;
        }
        if (weight >= 5 && weight <= 10) {
            return (int) (weight) * 2;
        }
        if (weight > 10) {
            return (int) (weight) * 3;
        }
        return -1;
    }
    /*
     * 1 euro por kg para packages inferiores a 5kg
     * 2 euros por kg para packages entre 5 e 10kg
     * 3 euros por kg superiores a 10kg
     */
}
