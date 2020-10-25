import Foundation
// The singleton pattern guarantees that only one instance of a class is instantiated
// global access
//static property and private initializer
class A {
    let property: String
    static let shared = A(property: "some text")
    private init(property: String) {
        self.property = property
    }
}

class B {
    func someFunc() {
        print(A.shared)
    }
}
