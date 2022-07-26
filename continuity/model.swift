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
    
    struct YourCustomModifier: View {
            
        var name: String
        
        var body: some View {
            Text(name)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width: 120, height: 100)
                .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
        }
    }
    
    static let shared = Words()
    
    @Published var showingSheet = false
    
    @State private var round = 0
    
    @ObservedObject var userDefaults = UserDefaultsSetting()
    
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
    
    
    @Published var keys = [
        "tree",
        "opportunity",
        "price",
        "cause",
        "face",
        "disease",
        "result",
        "painting",
        "finger",
        "improve",
        "advice",
        "draw"
    ]
    
   @Published var values = [
       "albero",
       "occasione",
       "prezzo",
       "causa",
       "volto",
       "malattia",
       "conseguenza",
       "quadro",
       "dito",
       "Migliorare",
       "consiglio",
       "disegnare"
   ]
    
    func saveWordsRu() {
        userDefaults.wordsRu = keys
    }
    
    func saveWordsEn() {
        userDefaults.wordsEn = values
    }
}

