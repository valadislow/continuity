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
        "рядом",
        "актуальны",
        "припев",
        "буксировать",
        "выносливость",
        "зверский",
        "послушание",
        "сдержанность",
        "отличаться",
        "упорство",
        "обратный",
        "отдельный",
        "придирчивый",
        "подовался",
        "поучительная история",
        "предостерегающий",
        "столкновения сзади",
        "задний ход",
        "бордюр",
        "ухудшать",
        "задняя сторона",
        "хвастаться",
        "обязательство",
        "твердый",
        "поставка товаров",
        "взволнованный",
        "расширение груза",
        "средний блок",
        "уступать дорогу",
        "направляться к",
        "твердо",
        "подчиниться",
        "окружная тюрьма",
        "конфискован",
        "бежать с места происшествия",
    ]
    
   @Published var values = [
       "alongside",
       "relevant",
       "refren",
       "tow",
       "endurance",
       "atrocious",
       "obedience",
       "self-restraint",
       "vare",
       "perseverance",
       "inverse",
       "separate",
       "cautious",
       "succumb",
       "cautionary tale",
       "cautionary",
       "rear end collisions",
       "tailgating",
       "сurb",
       "impair",
       "rear side",
       "vantare",
       "obligation",
       "solid",
       "supply of goods",
       "thrilled",
       "cargo extending",
       "mid balk",
       "yield right of way",
       "steer toward",
       "firmly",
       "obey",
       "county jail",
       "impounded",
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
