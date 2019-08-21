@isTest
public class ContactsSortTest {
    @isTest
    static void testMainLogic() {
        List<ContactsSort> contactsList = new List<ContactsSort>();
        Map<ContactsSort, String> namesByObject = new Map<ContactsSort, String>();

        ContactsSort firstContact = new ContactsSort(new Contact(
            FirstName = 'Ivan',
            LastName = 'Egle',
            Email = 'ivanko@gmail.com',
            Phone = '123456789'
        ));
        contactsList.add(firstContact);
        ContactsSort secondContact = new ContactsSort(new Contact(
            FirstName = 'Semen',
            LastName = 'Fable',
            Email = 'test2@gmail.com',
            Phone = '143456789'
        ));
        contactsList.add(secondContact);
        ContactsSort thirdContact = new ContactsSort(new Contact(
            FirstName = 'Dima',
            LastName = 'Demchyk',
            Email = 'test3@gmail.com',
            Phone = '153456789'
        ));
        contactsList.add(thirdContact);
        ContactsSort fourthContact = new ContactsSort(new Contact(
            FirstName = 'Ivan',
            LastName = 'Egle',
            Email = 'ivanko@gmail.com',
            Phone = '123456789'
        ));
        contactsList.add(fourthContact);
        ContactsSort fifthContact = new ContactsSort(new Contact(
            FirstName = 'Ivan2',
            LastName = 'Egle2',
            Email = 'ivanko2@gmail.com',
            Phone = '999456789'
        ));
        contactsList.sort();
        namesByObject.put(firstContact, 'first');
        namesByObject.put(secondContact, 'second');
        namesByObject.put(thirdContact, 'third');
        namesByObject.put(fourthContact, 'fourth');

        System.assertEquals(System.hashCode(firstContact), System.hashCode(fourthContact));
        System.assertEquals(3, namesByObject.size());
        System.assertEquals(true, namesByObject.containsKey(firstContact));
        System.assertEquals(true, namesByObject.containsKey(secondContact));
        System.assertEquals(true, namesByObject.containsKey(thirdContact));
        System.assertEquals(false, namesByObject.containsKey(fifthContact));
        System.assertEquals('Demchyk', contactsList[0].cont.LastName);
        System.assertEquals('Egle', contactsList[1].cont.LastName);
        System.assertEquals('Egle', contactsList[2].cont.LastName);
        System.assertEquals('Fable', contactsList[3].cont.LastName);
    }
}