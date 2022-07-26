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
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.bottom)
                .foregroundColor(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
            
            VStack{
                Text("ADD WORD TO LEARN")
                    .font(.system(size: 41, weight: .heavy, design: .monospaced))
                    .foregroundColor(.white)
                    .padding(30)
                    .rotation3DEffect(.degrees(35), axis: (x:4 , y:0, z:0))
                Spacer()
                
                VStack{
                    Form{
                        
                        TextField("Enter word on italian", text: $addValue)
                            .padding()
                            .background()
                        TextField("Enter word on english", text: $addKey)
                            .padding()
                            .background()
                    }
                }
                
                .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
                .padding(1)
                .listRowBackground(Color.clear)
                .accentColor(.blue)
                .foregroundColor(Color.blue)
                .onAppear(perform: {
                    UITableView.appearance().backgroundColor = UIColor.clear
                    UITableViewCell.appearance().backgroundColor = UIColor.clear
                })
                
                Button(action: {
                    words.keys.append(addKey)
                    words.values.append(addValue)
                    
                    words.saveWordsRu()
                    words.saveWordsEn()
                    
                    alertAddedWord = true
                    makeEmpty()
                    //                    words.showingSheet = false
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
    
    //    func AddValue() -> [String]{
    //        words.values.append(addValue)
    //    }
    
    //    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //
    //        userDefaults.setValue(addValue, forKey: "addValue")
    //        return true
    //    }
    
    //    func AddTo() {
    //        values.append(addValue)
    //        keys.append(addKey)
    //    }
    //    func Value(){
    //    let userDefaults = UserDefaults()
    //
    //        if let value = userDefaults.value(forKey: "tap") as? String{
    //        }
    //    }
    //}
}

struct showingSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddWordSheet()
    }
}
