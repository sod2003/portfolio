import Foundation

final public class AppSettings {
    
    public static let shared = AppSettings()
    
    private let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
    
    private var settings: [String: Any] = ["Theme": "Dark", "MaxConcurrentDownloads": 4]
    
    private init() {
        print("AppSettings initialized")
    }
    
    public func string(forKey key: String) -> String? {
        var result: String?
        concurrentQueue.sync {
            result = settings[key] as? String
        }
        return result
    }
    
    public func int(forKey key: String) -> Int? {
        var result: Int?
        concurrentQueue.sync {
            result = settings[key] as? Int
        }
        return result
    }
    
    public func set(value: Any, forKey key: String) {
        concurrentQueue.async(flags: .barrier) {
            self.settings[key] = value
        }
    }
}
