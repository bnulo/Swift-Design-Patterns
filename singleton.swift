import Foundation
// The singleton pattern guarantees that only one instance of a class is instantiated
// global access

//EX. let defaultFileManager = FileManager.default
let sharedA = A(property: "some text")
class A {
    let property: String
    
    init(property: String) {
        self.property = property
    }
}

class B {
    func someFunc() {
        // global access
        //in Swift, global variables are initialized lazily
        print(sharedA)
        
        //multiple instances of the class can be instantiated
        let sharedA2 = A(property: "some text again")
        print(sharedA2)
    }
}
