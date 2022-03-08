import UIKit

if let theme = AppSettings.shared.string(forKey: "Theme") {
    print("Theme: \(theme)")
}
