import Foundation

protocol Taggable {
    var tag: String { get set }
    var data: Data { get set }
    
    init(tag: String, data: Data)
}

protocol TaggedPersistable: Taggable {
    init(tag: String, contentsOf url: URL) throws
    func persist(to url: URL) throws
}

extension TaggedPersistable {
    func persist(to url: URL) throws {
        try self.data.write(to: url)
    }
    
    init(tag: String, contentsOf url: URL) throws {
        let data = try Data(contentsOf: url)
        self.init(tag: tag, data: data)
    }
}

protocol TaggedEncodable: Taggable {
    var base64EncodedString: String { get }
}

extension TaggedEncodable {
    var base64EncodedString: String {
        return data.base64EncodedString()
    }
}

/*class MyTaggedData: Taggable {
    var tag: String
    
    var data: Data
    
    required init(tag: String, data: Data) {
        self.tag = tag
        self.data = data
    }
}*/

struct MyTaggedData: TaggedPersistable, TaggedEncodable {
    var tag: String
    
    var data: Data
}

let taggedData = MyTaggedData(tag: "first", data: Data(repeating: 0, count: 1))
let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
let url = documentsURL.appendingPathComponent("myData")

try? taggedData.persist(to: url)

let str = taggedData.base64EncodedString
