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
        "view",
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
        "to improve"
    ]
    
   @Published var values = [
       "vista",
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
       "migliorare"
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
