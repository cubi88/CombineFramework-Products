- [ ] 1. What is root class in swift? - the root class is the fundamental base class from which all other classes inherit. The root class in Swift is NSObject.
Inheritance - the class can inherit another class and gets access the methods and properties defined in the inherit class. 
class MyClass: NSObject {}

- [ ] 2. What is optionals? - optional is a variable or constant that can either hold a value of a specific type or no value at all.
* if let(to return optional, if the value is nil it will not allow to go to if block, help to access the var inside  the skip block{}), 
* guard let(help to access var outside{})
*  nil coalescing(use to assign default value, if the value is nil it will take default value) 
How do we make optionals - which method we want to make optional, we separate in the extension and give it our own implementations, we can have only definition.
What is force unwrapping ! is an action done on the normal Optionals. Implicitly unwrapped Optionals are Optionals, usually used for class initialisation and will pass values without exclamation mark when used.
This operation is dangerous because you are telling the compiler: I am sure this Optional value does contain a real value, extract it!

- [ ] 3. Different initialisers -  initializers we can use to create and initialize instances of a class, struct, or enum. Initializer allows to set initial values for properties or perform additional setup during object creation.
Default Initializer, Memberwise Initializer, Custom Initializer, Convenience Initializer, Failable Initializer

- [ ] 4. Class vs struct - Structs are faster compare to classes, Performance is main reason to use struct over classes. Struct are value type, we cannot modify any property inside the struct.  Class is reference type. Inheritance is possible in classes, but not in struct. Structs store data in stack memory(faster to access), classes will store the data in heap in RAM memory.  Classes need initialiser to create any property, and structs by default provide init. Structs are imputable by default.. Structs are faster compare to classes, Performance is main reason to use struct over classes. Struct are value type, we cannot modify any property inside the struct.  Class is reference type

- [ ] 5. How do you write tests - When writing test cases in Swift, we can use the built-in testing framework XCTest. XCTest provides a set of classes and assertion methods that allow us to define and execute test cases. 
Another approach is to to use TDD, write the test cases before the actual code. 

- [ ] 6. Different App States - An iOS app lifecycle involves each state a mobile app goes through between launch and termination. The five states include not running, inactive, active, background, and suspended. The app process is in foreground but it cannot respond to events. Active — the app process is in foreground and can respond to events. Background — the app process is in background, and performs some logic. Suspended — the app process is in background, but doesn't perform any logic.

- [ ] 7. Escaping vs non escaping - All closures are non-escaping by default, the difference between them is that an escaping closure remains in memory and a non-escaping closure doesn’t remain in memory..

