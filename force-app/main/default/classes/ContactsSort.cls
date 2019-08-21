global class ContactsSort implements Comparable {
    public Contact cont;
    public ContactsSort(Contact con) {
        cont = con;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof ContactsSort) {
            ContactsSort cs = (ContactsSort)obj;
            Boolean isEquals = (cont.LastName == cs.cont.LastName)
                && (cont.FirstName == cs.cont.FirstName);
            return (isEquals);
        }
        return false;
    }

    public Integer hashCode() {
        return (31 * cont.LastName.hashCode()) ^ cont.FirstName.hashCode();
    }

    global Integer compareTo(Object compareTo) {
        ContactsSort compareToCon = (ContactsSort)compareTo;
        Integer returnValue = 0;
        if (cont.LastName > compareToCon.cont.LastName) {
            returnValue = 1;
        } else if (cont.LastName < compareToCon.cont.LastName) {
            returnValue = -1;
        }

        return returnValue;
    }
}