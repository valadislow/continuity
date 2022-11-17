//
//  showingSheet.swift
//  continuity
//
//  Created by 1 on 3/23/22.
//

import SwiftUI

struct AddWordSheet: View {
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    
    
    @ObservedObject var words = Words.shared
    
    @State var alertAddedWord = false
    
    @State var addValue = ""
    @State var addKey = ""
    
    
    var body: some View {
        ZStack{
//            Rectangle()
//                .edgesIgnoringSafeArea(.bottom)
//                .foregroundColor(Color(UIColor(red: 0.93, green: 0.94, blue: 0.95, alpha: 1.00)))
//
            VStack{
                Text("ADD WORD TO LEARN")
                    .font(.system(size: 41, weight: .heavy, design: .monospaced))
                    .padding(30)
                    .rotation3DEffect(.degrees(35), axis: (x:4 , y:0, z:0))
                    .foregroundColor(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
                Spacer()
                
                VStack{
                    Form{
                        TextField("Enter word on english", text: $addValue)
                            .padding(20)
                        
                        TextField("Enter word on russian", text: $addKey)
                            .padding(20)
                    }
                    .onAppear(perform: {
                        UITableViewCell.appearance().backgroundColor = UIColor.clear
                    })
                    .onDisappear {
                        UITableView.appearance().backgroundColor = .systemGroupedBackground }
                    .foregroundColor(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
                    .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
//                                    .onAppear(perform: {
//                                         UITableViewCell.appearance().backgroundColor = UIColor.clear
//                                    })
//                                    .onDisappear {
//                                        UITableView.appearance().backgroundColor = .systemGroupedBackground }
//                                    .listRowBackground(Color.clear)
//                                    .accentColor(.blue)
//                                    .foregroundColor(Color.blue)
                    
                }
                
                
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
