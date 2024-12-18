package lab10.ex1;

import java.util.Iterator;
import java.util.ListIterator;

public class TestMain {
    public static void main(String[] args) {
        
        VectorGeneric<Integer> vg = new VectorGeneric<>();

        for (int i = 0; i < 10; i++) {
            vg.addElem(i);
        }

        System.out.println("Total elements: " + vg.totalElem());

        //------------ TEST ITERATOR ------------
        System.out.println("\nTEST ITERATOR");
        Iterator<Integer> regularIterator = vg.Iterator();
        while(regularIterator.hasNext()) {
            System.out.println(regularIterator.next());
        }

        //------------ TEST LIST ITERATOR ------------
        
        System.out.println("\nTEST LIST ITERATOR");
        ListIterator<Integer> listIterator = vg.listIterator();

        //Test foward
        System.out.println("Foward");
        while(listIterator.hasNext()) {
            System.out.println("Next index: "+listIterator.nextIndex());
            System.out.println("Next element: " +listIterator.next());
        }

        //Test backward
        System.out.println("Backward");
        while(listIterator.hasPrevious()) {
            System.out.println("Previous index: "+listIterator.previousIndex());
            System.out.println("Previous element: " +listIterator.previous());
        }

        //----------------- TEST SPECIFIED INDEX -----------------

        System.out.println("\nTEST SPECIFIED INDEX");
        ListIterator<Integer> listIteratorSpecified = vg.listIterator(5);

        System.out.println("Foward");
        while(listIteratorSpecified.hasNext()) {
            System.out.println("Next index: "+listIteratorSpecified.nextIndex());
            System.out.println("Next element: " +listIteratorSpecified.next());
        }

        System.out.println("Backward");
        while(listIteratorSpecified.hasPrevious()) {
            System.out.println("Previous index: "+listIteratorSpecified.previousIndex());
            System.out.println("Previous element: " +listIteratorSpecified.previous());
        }

        //----------------- TEST SPECIFIED INDEX AND NORMAL ITERATOR -----------------

        System.out.println("TEST SPECIFIED INDEX AND NORMAL ITERATOR");
        listIteratorSpecified = vg.listIterator(5);
        regularIterator = vg.Iterator();
        Iterator<Integer> newIterator = vg.Iterator();

        newIterator.next();
        newIterator.next();
        newIterator.next();
        newIterator.next();

        while(listIteratorSpecified.hasNext()) {
            System.out.println("Next index: "+listIteratorSpecified.nextIndex());
            System.out.println("Next element: " +listIteratorSpecified.next());
            System.out.println("Next element from normal iterator: " +regularIterator.next());
        }



    }
}
