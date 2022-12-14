//
//  model.swift
//  continuity
//
//  Created by 1 on 4/11/22.
//

//import Foundation
import SwiftUI
import Combine

class Words : ObservableObject {
    
    
    static let shared = Words()
    
    @Published var showingSheet = false
    
    @State private var round = 0
    
    @ObservedObject var userDefaults = UserDefaultsSetting()
    
    
    @Published var keys = [
        "изумительный",
        "дамашний",
        "нежеланный",
        "последовательный",
        "изменения",
        "связанный",
        "обширный",
        "мелкий",
        "отступил",
        "общепринятый",
        "удтвердил",
        "выделять",
        "обязательство",
        "твердый",
        "берег",
        "взволнованный",
        "расширение груза",
        "средний блок",
        "пар",
        "направляться к",
        "твердо",
        "возникать",
        "доказательство",
        "затемнять",
        "бежать с места происшествия",
    ]
    
   @Published var values = [
       "spectacular",
       "domestic",
       "unwilling",
       "coherent",
       "alterations",
       "associated",
       "extensive",
       "shallow",
       "retreated",
       "conventional",
       "argued",
       "distinguish",
       "obligation",
       "solid",
       "shore",
       "thrilled",
       "cargo extending",
       "mid balk",
       "mist",
       "steer toward",
       "firmly",
       "arise",
       "evidence",
       "obscure",
       "flee the scene"
   ]
    
    func saveWordsRu() {
        userDefaults.wordsRu = keys
    }
    
    func saveWordsEn() {
        userDefaults.wordsEn = values
    }
}


//    struct Wordss: Identifiable {
//        var id = UUID()
//        let values: [String]
//        let keys: [String]
//    }
//
//    func randomni() -> Int {
//        let correct = Int.random(in: 0...values.count - 1)
//        return correct
//    }
