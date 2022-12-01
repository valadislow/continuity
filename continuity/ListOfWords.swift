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
    
    
//    init(
//        _ data: Data,
//        id: KeyPath<Data.Element, ID>,
//        content: @escaping (Data.Element) -> Content
//    )
    
    var body: some View {
        
        
        VStack {
            VStack {
                Views.ListOfWordsMView(name: "LIST OF WORDS")
            }

            
            List {
//                ForEach(0..<words.values.count, id: \.self) { index in
//                    ForEach(words.values[index]) { word in
                
                ForEach(0..<(words.values.count)) { number in
                    HStack{
                        Text(words.values[number])
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Spacer()
                        Text(words.keys[number])
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }
                    
                }.onDelete(perform: delete)
                .listRowBackground(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)).ignoresSafeArea(.all, edges: .all))
            }
            .listStyle(PlainListStyle())
            .scrollContentBackground(.hidden)
        }
        .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
    }
       
    
    func delete(at offsets: IndexSet) {
        words.values.remove(atOffsets: offsets)
        words.keys.remove(atOffsets: offsets)
        
        words.saveWordsRu()
        words.saveWordsEn()
    }
}

struct ListOfWords_Previews: PreviewProvider {
    static var previews: some View {
        ListOfWordsView()
    }
}
