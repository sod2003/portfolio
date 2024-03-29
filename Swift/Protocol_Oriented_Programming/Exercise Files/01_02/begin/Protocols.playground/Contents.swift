import Foundation

protocol Taggable {
    var tag: String { get set }
    var data: Data { get }
    static var counter: Int { get }
    
    mutating func update(data: Data) -> Bool
    static func incrementCounter()
    
    init(tag: String, data: Data)
}
