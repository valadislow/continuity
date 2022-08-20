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
        "сочувствие",
        "учтивость",
        "неприличный",
        "сверхъестественный",
        "статуэтки",
        "зверский",
        "противоречивый",
        "делать вид",
        "целостный",
        "подробный",
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
//        "pavements",
//        "comprehends",
//        "complaint",
//        "cucumber",
//        "overall",
//        "superior",
//        "allows",
//        "make a mistake",
//        "make a payment",
//        "miss an opportunity",
//        "take pictures",
//        "reveal"
//        "",
    ]
    
   @Published var values = [
       "empathy",
       "courtesy",
       "inappropriate",
       "uncanny",
       "hummel figures",
       "atrocious",
       "contridactory",
       "pretend",
       "holistic",
       "verbose",
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
//       "marciapiedi",
//       "comprende",
//       "denuncia",
//       "cetriolo",
//       "complessiva",
//       "superiore",
//       "consente",
//       "commettere un errore",
//       "effettuare un pagamento",
//       "perdere un'occasione",
//       "scattare foto",
//       "reveal"
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
