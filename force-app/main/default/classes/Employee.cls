global class Employee implements Comparable {
    public Long id;
    public String name;
    public String phone;

    public Employee(Long receivedId, String receivedName, String receivedPhone) {
        id = receivedId;
        name = receivedName;
        phone = receivedPhone;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof Employee) {
            Employee employee = (Employee)obj;
            Boolean isEquals = (id == employee.id)
                && (name == employee.name)
                && (phone == employee.phone);
            return (isEquals);
        }
        return false;
    }

    public Integer hashCode() {
        return (31 * name.hashCode()) ^ name.hashCode();
    }

    global Integer compareTo(Object compareTo) {
        Employee compareToEmployee = (Employee)compareTo;
        Integer returnValue = 0;
        if (name > compareToEmployee.name) {
            returnValue = 1;
        } else if (name < compareToEmployee.name) {
            returnValue = -1;
        }

        return returnValue;
    }
}