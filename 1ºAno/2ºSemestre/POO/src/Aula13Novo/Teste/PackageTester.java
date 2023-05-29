public class PackageTester {
    public static void main(String[] args) {
    
        PackageManager pkg = new PackageManager();
        pkg.addPackage(new Package(130, 10.5,"daqui","ali"));
        pkg.readPackagesFile("encomendas.txt");
        pkg.removePackage(22);
        pkg.printAllPackageInfo();
        System.out.println(pkg.getPackageByID(2));
        ShippingCostCalculator calculator = new StandardShippingCostCalculator();
        pkg.printAllPackagesToFile("NOVOFILENOVOFILE.txt");
        System.out.println(pkg.calculateShippingCost(calculator, pkg.getPackageByID(130)));
    }
}