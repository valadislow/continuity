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


struct YourCustomModifier: View {
        
    var name: String
    
    var body: some View {
        Text(name)
            .font(.system(size: 20, weight: .heavy, design: .monospaced))
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .scaleEffect(2)
            .padding(40)
            .rotation3DEffect(.degrees(35), axis: (x:4 , y:0, z:0))
    }
}


struct ListOfWordsView: View {
    
    @ObservedObject var words = Words.shared
    
//    var wordss = wordsInTheList(value: words.values, key: words.keys)
    
//    var collections = [
//        Words(value: words.values, key: words.keys)
//    ]
    
//    func seque() -> [String] [String] {
//        let sequee = zip(words.values, words.keys)
//        return sequee
//    }
    
    var body: some View {
        let keyCount = words.values.count
        VStack {
            VStack {
                YourCustomModifier(name: "LIST OF WORDS")
            }
            List {
                ForEach(0..<keyCount) { i in
                    HStack{
                        Text(words.values[i])
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Spacer()
                        Text(words.keys[i])
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
    
//    func wordes() {
//        ForEach(words.keys, id:\.self) { words in
//            Text(words)
//        }
//    }
//    func wordees() {
//        ForEach(words.values, id:\.self) { words in
//            Text(words)
//        }
//    }
//
//    func forEch() -> Int {
//        ForEach(0...words.keys.count - 1) {
//            word in
//        }
//    }
    
    
    func delete(at offsets: IndexSet) {
        words.values.remove(atOffsets: offsets)
        words.keys.remove(atOffsets: offsets)
        
        words.removeWordsEn()
        words.removeWordsRu()
        
//        UserDefaults.standard.synchronize()
    }
}

struct ListOfWords_Previews: PreviewProvider {
    static var previews: some View {
        ListOfWordsView()
    }
}
