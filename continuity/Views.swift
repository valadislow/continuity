//
//  Views.swift
//  continuity
//
//  Created by 1 on 7/12/22.
//

import SwiftUI
import Combine


class Views {
    
    struct YourCustomModifier: View {
            
        var name: String
        
        var body: some View {
            Text(name)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width: 150, height: 100)
                .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
//                .cornerRadius(5)
        }
    }
    
    struct ListOfWordsMView: View {
            
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
    
    struct RoundsView: View {
        
        var name: String
        
        var body: some View {
            Text(name)
            .foregroundColor(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
            .fontWeight(.black)
            .font(.largeTitle)
            .rotation3DEffect(.degrees(35), axis: (x:3, y:0, z:0))
            .scaleEffect(2)
            .padding()
        }
    }
        
}

//struct RoundsView: View {
//
//    var name: String
//
//    var body: some View{
//
//    }
//}
//
//}


