package ExamePratico;

public class BalcaoDeApoio {
    private String contactoTelefonico;

    public String getContactoTelefonico() {
        return contactoTelefonico;
    }
    public void setContactoTelefonico(String contactoTelefonico) {
        this.contactoTelefonico = contactoTelefonico;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((contactoTelefonico == null) ? 0 : contactoTelefonico.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        BalcaoDeApoio other = (BalcaoDeApoio) obj;
        if (contactoTelefonico == null) {
            if (other.contactoTelefonico != null)
                return false;
        } else if (!contactoTelefonico.equals(other.contactoTelefonico))
            return false;
        return true;
    }
}
