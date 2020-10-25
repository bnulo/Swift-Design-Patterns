import Foundation
// The singleton pattern guarantees that only one instance of a class is instantiated
// global access
//static property and private initializer
class A {
    let property: String
    private static let sharedA: A = {
        return A(property: "some text")
        
    }()
    private init(property: String) {
        self.property = property
    }
    
    class func shared() -> A {
        return sharedA
    }
}

class B {
    func request() {
        print(A.shared)
    }
}
