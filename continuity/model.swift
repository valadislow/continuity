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
        "punishment",
        "reason",
        "tree",
        "opportunity",
        "price",
        "cause",
        "face",
        "disease",
        "finger",
        "as soon as",
        "to improve",
        "affirmation",
        "adore",
        "cycle lane",
        "pedestrians",
        "prepared",
        "accent",
        "lanes of travel",
        "roadways",
        "traffic island",
        "subdivided",
        "the cycle paths",
        "pavements",
        "comprehends",
        "complaint",
        "cucumber",
        "overall",
        "superior",
        "allows",
        "make a mistake",
        "make a payment",
        "miss an opportunity",
        "take pictures",
        "reveal"
//        "",
    ]
    
   @Published var values = [
       "pena",
       "motivo",
       "albero",
       "occasione",
       "prezzo",
       "causa",
       "volto",
       "malattia",
       "dito",
       "appena",
       "migliorare",
       "affermazione",
       "adorare",
       "ciclabile",
       "pedoni",
       "predisposta",
       "accento",
       "corsie di marcia",
       "carreggiate",
       "spartitraffico",
       "suddivisa",
       "le piste ciclabili",
       "marciapiedi",
       "comprende",
       "denuncia",
       "cetriolo",
       "complessiva",
       "superiore",
       "consente",
       "commettere un errore",
       "effettuare un pagamento",
       "perdere un'occasione",
       "scattare foto",
       "reveal"
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
