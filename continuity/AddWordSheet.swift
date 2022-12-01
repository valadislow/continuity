//
//  showingSheet.swift
//  continuity
//
//  Created by 1 on 3/23/22.
//

import SwiftUI

struct AddWordSheet: View {
    
    @ObservedObject var words = Words.shared
    
    @State var alertAddedWord = false
    
    @State var addValue = ""
    @State var addKey = ""
    
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.bottom)
                .foregroundColor(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
            
            VStack{
                Text("ADD WORD TO LEARN")
                    .font(.system(size: 41, weight: .heavy, design: .monospaced))
                    .foregroundColor(Color(.white))
                    .padding()
                    .rotation3DEffect(.degrees(35), axis: (x:4 , y:0, z:0))
                
                VStack{
                    Form {
                        TextField("Enter word on english", text: $addValue)
                            .padding()
                            .background()
                        TextField("Enter word on russian", text: $addKey)
                            .padding()
                            .background()
                    }
                }
                
                .scrollContentBackground(.hidden)
                
    
                .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))

                
                
                Button(action: {
                    words.keys.append(addKey)
                    words.values.append(addValue)
                    
                    words.saveWordsRu()
                    words.saveWordsEn()
                    
                    alertAddedWord = true
                    makeEmpty()

                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 130, height: 80)
                            .cornerRadius(10)
                        HStack {
                            Image(systemName: "plus")
                                .scaleEffect(2)
                            Text("ADD")
                                .font(.largeTitle)
                        }.foregroundColor(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
                    }
                })
                Spacer()
                
            }
            .alert(isPresented: $alertAddedWord) {
                Alert(
                    title: Text("🎉 Word added 🎉"),
                    dismissButton: .destructive(Text("Ok")) {
                        words.showingSheet = false
                    })
            }
        }
    }
    
    func makeEmpty(){
        self.addValue = ""
        self.addKey = ""
        
    }
    
}

struct showingSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddWordSheet()
    }
}
