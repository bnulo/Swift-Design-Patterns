import Foundation

protocol BDelegate: class {
    // this protocol says that every class which accepts me, has to implement someFunc
    // (and implicitly it would be a delegate for class B and at B's service)
    func someFunc()
}

class B {
    weak var delegate: BDelegate? // class B has a delegate
    func someOtherFunc() {
        delegate?.someFunc() // delegate of B has implemented the someFunc
    }
}

class C: BDelegate { // C has been accepted to be a delegate for class B
    
    func someFunc() { // therefor C implements someFunc in order to accepting BDelegate protocol
    }
}
