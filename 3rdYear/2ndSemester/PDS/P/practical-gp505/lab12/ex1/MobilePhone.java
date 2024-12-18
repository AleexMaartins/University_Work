package lab12.ex1;

public class MobilePhone {
    private String processor;
    private double price;
    private int ram;
    private int memory;

    public MobilePhone(String processor, double price, int ram, int memory) {
        this.processor = processor;
        this.price = price;
        this.ram = ram;
        this.memory = memory;
    }
    

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
        this.processor = processor;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getRam() {
        return ram;
    }

    public void setRam(int ram) {
        this.ram = ram;
    }


    public int getMemory() {
        return memory;
    }


    public void setMemory(int memory) {
        this.memory = memory;
    }

    

}
