import Foundation
// The singleton pattern guarantees that only one instance of a class is instantiated
// global access

//EX. let defaultFileManager = FileManager.default
let sharedNetworkManager = NetworkManager(baseUrl: "baseURL")
class NetworkManager {
    let baseUrl: String
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
}

class Presenter {
    func request() {
        // global access
        //in Swift, global variables are initialized lazily
        print(sharedNetworkManager)
        
        //multiple instances of the class can be instantiated
        let sharedNetworkManager = NetworkManager(baseUrl: "other baseRL")
        print(sharedNetworkManager)
    }
}
