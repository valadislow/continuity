import Foundation
import Combine

class UserDefaultsSetting: NSObject, ObservableObject {
    
    var userDef = UserDefaults.standard
    
    @Published var wordsKey: [String] {
        didSet {
            userDef.set(wordsKey, forKey: "wordsKey")
        }
    }
    
    @Published var wordsValue: [String] {
        didSet {
            userDef.set(wordsValue, forKey: "wordsValue")
        }
    }
    
//    @Published var words: [String : String] {
//        didSet {
//            userDef.set(words, forKey: "words")
//        }
//    }
    
    override init() {
        self.wordsKey = userDef.object(forKey: "wordsKey") as? [String] ?? [""]
        self.wordsValue = userDef.object(forKey: "wordsValue") as? [String] ?? [""]
//        self.words = userDef.object(forKey: "words") as? [String: String] ?? ["" : ""]
    }
}
