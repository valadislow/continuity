//
//  ListOfWords.swift
//  continuity
//
//  Created by 1 on 5/9/22.
//

//struct customColor: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
//    }
//}
//wordsInTheList(value: words.values, key: words.keys)



import SwiftUI
 
//struct Word: Identifiable{
//    var id: UUID
//    var value: String
//    var key: String
//}

struct ListOfWordsView: View {
    
    @ObservedObject var words = Words.shared
    
    
    var body: some View {
        
        
        VStack {
            VStack {
                Views.ListOfWordsMView(name: "LIST OF WORDS")
            }

            
            List {

                ForEach(words.guys) { word in
                    HStack{
                        Text(word.value)
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Spacer()
                        Text(word.key)
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }
                    
                }.onDelete(perform: delete)
                .listRowBackground(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)).ignoresSafeArea(.all, edges: .all))
            }
            .listStyle(PlainListStyle())
        }
        .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
    }
       
    
    func delete(at offsets: IndexSet) {
//        words.values.remove(atOffsets: offsets)
//        words.keys.remove(atOffsets: offsets)
        words.guys.remove(atOffsets: offsets)
        
        words.saveWords()
        
//        words.saveWordsRu()
//        words.saveWordsEn()
    }
}

struct ListOfWords_Previews: PreviewProvider {
    static var previews: some View {
        ListOfWordsView()
    }
}
