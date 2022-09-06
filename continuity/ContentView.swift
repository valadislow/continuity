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
    
    @State private var correctAnswer = Int.random(in: 0...3)
    //    @State var randomni = Int.random(in: 0...words.values.count)
    
    @State private var round = 0
    @State private var rounds = 0
    @State private var score = 0
    
    
    
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
                        self.correctAnswer = random()
                        
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
                Alert(title: Text("💩 Answer was wrong, the right one was \(getAnswer(count: self.correctAnswer)) 💩"),
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
    
    func getAnswer(count: Int) -> String {
        if count == self.correctAnswer {
            return words.values[rounds]
        } else {
            return words.values[randomni()]
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
        if number == self.correctAnswer {
            self.score += 100
//            self.background[number] = Color.green
        } else {
            self.score -= 100
            self.showingAlert = true
        }
    }
}
    
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}

