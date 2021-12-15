@isTest
public class HelloWorldTest {

    @IsTest
    public static void testSayHelloMethod(){
        Test.startTest();
        HelloWorld.sayHelloWorld();
        Test.stopTest();
    }
    @IsTest
    static void testAdditionMethod(){        
        Test.startTest();
        HelloWorld.additionMethod(10, 20);
        Test.stopTest();
        
    }
}
