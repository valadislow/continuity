import Foundation
import Combine

class UserDefaultsSetting: NSObject, ObservableObject {
    
    var userDef = UserDefaults.standard
    
//    @Published var wordsRu: [String] {
//        didSet {
//            userDef.set(wordsRu, forKey: "wordsRu")
//        }
//    }
    
//    @Published var wordsEn: [String] {
//        didSet {
//            userDef.set(wordsEn, forKey: "wordsEn")
//        }
//    }
    
    @Published var words: [String] {
        didSet {
            userDef.set(words, forKey: "words")
        }
    }
    
    override init() {
//        self.wordsRu = userDef.object(forKey: "wordsRu") as? [String] ?? [""]
//        self.wordsEn = userDef.object(forKey: "wordsEn") as? [String] ?? [""]
        self.words = userDef.object(forKey: "words") as? [String] ?? [""]
    }
}
