import Foundation

protocol Taggable {
    associatedtype Content
    var tag: String {get}
    var data: Content { get }
    init(tag: String, data: Content)
}

struct TaggedDouble: Taggable {
    var tag: String
    var data: Double
}

struct TaggedDate: Taggable {
    var tag: String
    var data: Date
}
