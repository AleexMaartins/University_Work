package lab07.ex2;

import java.util.List;

public interface ContactsStorageInterface {
    List<Contact> loadContacts();

    boolean saveContacts(List<Contact> list);
}