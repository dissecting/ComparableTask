@isTest
private class EmployeeSortingTest {
    @isTest
    static void testMainLogic() {
        List<Employee> empList = new List<Employee>();
        Map<Employee, String> namesByEmployee = new Map<Employee, String>();
        Employee firstEmployee = new Employee(
            25,
            'CC',
            '4155551000'
        );
        empList.add(firstEmployee);
        Employee secondEmployee = new Employee(
            101,
            'AA',
            '4155551212'
        );
        empList.add(secondEmployee);
        Employee thirdEmployee = new Employee(
            101,
            'AA',
            '4155551212'
        );
        empList.add(thirdEmployee);
        Employee fourthEmployee = new Employee(
            105,
            'BB',
            '4155551099'
        );
        empList.add(fourthEmployee);
        namesByEmployee.put(firstEmployee, 'first');
        namesByEmployee.put(secondEmployee, 'second');
        namesByEmployee.put(thirdEmployee, 'third');
        namesByEmployee.put(fourthEmployee, 'fourth');

        empList.sort();

        System.debug(empList);
        System.assertEquals(System.hashCode(thirdEmployee), System.hashCode(secondEmployee));
        System.assertEquals(3, namesByEmployee.size());
        System.assertEquals(true, namesByEmployee.containsKey(firstEmployee));
        System.assertEquals(true, namesByEmployee.containsKey(secondEmployee));
        System.assertEquals(true, namesByEmployee.containsKey(thirdEmployee));
        System.assertEquals(true, namesByEmployee.containsKey(fourthEmployee));
        System.assertEquals('AA', empList[0].Name);
        System.assertEquals('AA', empList[1].Name);
        System.assertEquals('BB', empList[2].Name);
        System.assertEquals('CC', empList[3].Name);
    }
}