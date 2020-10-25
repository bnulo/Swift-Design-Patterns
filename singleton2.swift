import Foundation
// The singleton pattern guarantees that only one instance of a class is instantiated
// global access
//static property and private initializer
class NetworkManager2 {
    let baseUrl: String
    static let shared = NetworkManager2(baseUrl: "baseURL")
    private init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
}

class Presenter2 {
    func request() {
        print(NetworkManager2.shared)
    }
}
