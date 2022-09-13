//
//  ContentView.swift
//  continuity
//
//  Created by 1 on 3/9/22.
//

import SwiftUI
import Combine

//class Sheet : ObservableObject{
//    @Published var showingSheet = false
//}


struct ContentView: View {
    
    @ObservedObject var words = Words.shared
    
    @State private var ListOfWords = false
    @State private var showingAlert = false
    
    @State private var randoms = Int.random(in: 0...3)
    //    @State var randomni = Int.random(in: 0...words.values.count)
    
    @State private var round = 0
    @State private var rounds = 0
    @State private var score = 0
    
    @State private var array = []
    
    var body: some View {
        
        
        
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color(UIColor(red: 0.45, green: 0.73, blue: 1.00, alpha: 1.00)))
            
            VStack {
                
                VStack(){
                    HStack(spacing: 25){
                        Button(action: {
                            ListOfWords = true
                        }, label: {
                            Views.YourCustomModifier(name: "Words")
                                .sheet(isPresented: $ListOfWords){
                                    ListOfWordsView()
                                }
                        })
                        Button(action: {
                            words.showingSheet = true
                        }, label: {
                            Views.YourCustomModifier(name: "Add word")
                                .sheet(isPresented: $words.showingSheet){
                                    AddWordSheet()
                                }
                        })
                    }
                    Spacer()
                    Views.RoundsView(name: "Round: \(rounds)")
                    
                    Text("Choose the correct answer:")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    
                    Text(words.keys[rounds])
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                }
                
                ForEach(0..<4, id: \.self) { number in
                    Button(action: {
                        self.examination(number)
                        self.didSetRounds()
                        self.randoms = random()
                        
                    }){
                        Text(self.getAnswer(count: number))
                            .fontWeight(.semibold)
                            .frame(width: 200, height: 100)
                            .background()
                            .cornerRadius(20)
                            .frame(width: 200, height: 100)
                            .offset(x: -6, y: -6)
                            .background(Color(UIColor(red: 0.04, green: 0.52, blue: 0.89, alpha: 1.00)))
                            .cornerRadius(20)
                            .font(.title3)
                    }
                }

            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("💩 Answer was wrong 💩"),
                      dismissButton: .default(Text("Countinue")))
            }
        }
    }
    func random() -> Int {
        let correct = Int.random(in: 0...3)
        return correct
    }
    
    func randomni() -> Int {
        let correct = Int.random(in: 0..<words.values.count)
        return correct
    }
    
    func elementControl() -> String {
        var anotherElement = words.values[randomni()]
        var newElement = words.values[random()]
        
        if array.contains(where: newElement) {
            array.append(anotherElement)
        }else {
            array.append(newElement)
        }
        
    }
    
//    func exam(_: Bool) -> Bool {
//        var newElement = words.values[random()]
//        if var hasElement = array.contains(newElement) = true{
//            array.append(<#T##newElement: Any##Any#>)
//        }
//    }
//
    
    func getAnswer(count: Int) -> String {
        if count == self.randoms {
            return words.values[rounds]
        } else {
            return elementControl()
        }
    }
    
    func didSetWords() -> Int{
        if words.values.count == round + 1 {
            self.round = 0
        } else {
            self.round += 1
        }
        return round
    }
    
    func didSetRounds() {
        if words.values.count == rounds + 1 {
            self.rounds = 0
        } else {
            self.rounds += 1
        }
    }
    
    func examination(_ number: Int) {
        if number == self.randoms {
            self.score += 100
        } else {
            self.score -= 100
            self.showingAlert = true
        }
    }
    
    //    func get(count: String) -> String{
    //        if count ==
    //    }
    
    //    func rrandom() -> Int {
    //        if Array(questionsAnswer.values)[rounds] == uwords[random()]{
    //            return uwords[random()]
    //        } else {
    //            return uwords[random()]
    //        }
    //
    //    }
    //
    //    func notAlike(count: Int, uwords[random()]: Int) -> Int{
    //        if count == uwords[random()]{
    //            return uwords[random()]
    //        }else{
    //            return uwords[random()]
    //        }
    //    }
    
    //    func notAlike(getAnswer(count: number)) -> String {
    //        if Array(self.questionsAnswer.value)[random()] == Array(self.questionsAnswer.values)[rounds]{
    //        return uwords[random()]
    //    } else {
    //        return Array(self.questionsAnswer.value)[random()]
    //    }
    //    }
    //
    
    //        func wordTapped(_ number: Int)  {
    //             if number == random() {
    //        score += 1
    //        } else {
    //        score -= 1
    //        }
    //    }
    
    //
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
