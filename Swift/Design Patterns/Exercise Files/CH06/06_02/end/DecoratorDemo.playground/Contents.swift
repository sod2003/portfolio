import Foundation

class UserDefaultsDecorator: UserDefaults {
    private var userDefaults = UserDefaults.standard
    
    convenience init(userDefaults: UserDefaults) {
        self.init()
        self.userDefaults = userDefaults
    }
    
    func set(date: Date?, forKey key: String) {
        userDefaults.set(date, forKey: key)
    }
    
    func date(forKey key: String) -> Date? {
        return userDefaults.value(forKey: key) as? Date
    }
}

let userDefaults = UserDefaultsDecorator()

userDefaults.set(42, forKey: "answer")
print(userDefaults.string(forKey: "answer") ?? "?")

userDefaults.set(date: Date(), forKey: "now")
print(userDefaults.date(forKey: "now") ?? "No date captured")
