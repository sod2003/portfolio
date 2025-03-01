import Foundation

final public class AppSettings {
    
    public static let shared = AppSettings()
    
    private let serialQueue = DispatchQueue(label: "serialQueue")
    
    private var settings: [String: Any] = ["Theme": "Dark", "MaxConcurrentDownloads": 4]
    
    private init() {
        print("AppSettings initialized")
    }
    
    public func string(forKey key: String) -> String? {
        var result: String?
        serialQueue.sync {
            result = settings[key] as? String
        }
        return result
    }
    
    public func int(forKey key: String) -> Int? {
        var result: Int?
        serialQueue.sync {
            result = settings[key] as? Int
        }
        return result
    }
    
    public func set(value: Any, forKey key: String) {
        serialQueue.sync {
            settings[key] = value
        }
    }
}
