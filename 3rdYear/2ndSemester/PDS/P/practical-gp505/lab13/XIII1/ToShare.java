package lab13.XIII1;

import java.util.HashMap;
import java.util.Map;


public class ToShare {
    private Map<String, Product> products = new HashMap<>();
    private Map<String, Client> rentals = new HashMap<>();

    public boolean add(Product p){
        if(!products.containsKey(p.code())){
            products.put(p.code(), p);
            return true;
        }
        return false;
    }

    public Product remove(String code){
        return products.remove(code);
    }

    public  Product remove(Product p){
        return products.remove(p.code());
    }

    public boolean share(String code, Client user){
        Product product = products.get(code);
        if (product != null && !rentals.containsKey(code)) {
            user.rentProduct(product);
            rentals.put(code, user);
            return true;
        }
        return false;
    }

    public boolean share (Product p, Client user){
        return share(p.code(),user);
    }

    public boolean giveback(String code){
        Product product = products.get(code);
        Client user = rentals.get(code);
        if (product != null && user != null) {
            user.returnProduct(product);
            rentals.remove(code);
            return true;
        }
        return false;
    }

    }


}
