import Foundation

struct Wrapper<T: Equatable> {
    var storage: T
    
    init(_ value: T) {
        storage = value
    }
}

let piWrapper = Wrapper<Double>(Double.pi)

let stringWrapper = Wrapper<String>("Hello")

let dateWrapper = Wrapper(Date())
