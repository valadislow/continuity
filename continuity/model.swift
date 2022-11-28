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
    
    struct Word: Identifiable {
        let id = UUID()
        var key: String
        var value: String
    }
    
    @Published var guys = [
        Word(key: "сочувствие", value: "empathy"),
        Word(key: "учтивость", value: "courtesy"),
        Word(key: "неприличный", value: "inappropriate"),
        Word(key: "сверхъестественный", value: "uncanny"),
        Word(key: "окружная тюрьма", value: "county jail"),
        Word(key: "твердо", value: "firmly"),
        Word(key: "направляться к", value: "steer toward")
    ]
    
    
    //    @Published var keys = [
    //        "сочувствие",
    //        "учтивость",
    //        "неприличный",
    //        "сверхъестественный",
    //        "статуэтки",
    //        "зверский",
    //        "противоречивый",
    //        "делать вид",
    //        "целостный",
    //        "подробный",
    //        "обратный",
    //        "отдельный",
    //        "придирчивый",
    //        "подовался",
    //        "поучительная история",
    //        "предостерегающий",
    //        "столкновения сзади",
    //        "задний ход",
    //        "бордюр",
    //        "ухудшать",
    //        "задняя сторона",
    //        "хвастаться",
    //        "обязательство",
    //        "твердый",
    //        "поставка товаров",
    //        "взволнованный",
    //        "расширение груза",
    //        "средний блок",
    //        "уступать дорогу",
    //        "направляться к",
    //        "твердо",
    //        "подчиниться",
    //        "окружная тюрьма",
    //    ]
    //
    //    @Published var values = [
    //       "empathy",
    //       "courtesy",
    //       "inappropriate",
    //       "uncanny",
    //       "hummel figures",
    //       "atrocious",
    //       "contridactory",
    //       "pretend",
    //       "holistic",
    //       "verbose",
    //       "inverse",
    //       "separate",
    //       "cautious",
    //       "succumb",
    //       "cautionary tale",
    //       "cautionary",
    //       "rear end collisions",
    //       "tailgating",
    //       "сurb",
    //       "impair",
    //       "rear side",
    //       "vantare",
    //       "obligation",
    //       "solid",
    //       "supply of goods",
    //       "thrilled",
    //       "cargo extending",
    //       "mid balk",
    //       "yield right of way",
    //       "steer toward",
    //       "firmly",
    //       "obey",
    //       "county jail",
    //   ]
    
    
    //    func saveWordsRu() {
    //        userDefaults.wordsRu = keys
    //    }
    //
    //    func saveWordsEn() {
    //        userDefaults.wordsEn = values
    //    }
    
//    func saveWords() {
//        userDefaults.words = guys
//    }
}
