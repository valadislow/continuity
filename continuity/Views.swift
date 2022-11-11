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
                .frame(width: 140, height: 100)
                .background(Color(UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00)))
                .cornerRadius(5)
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
            .padding(25)
        }
    }
    
//    struct ButtonView: View {
//        
//        var name: String
//        
//        var body: some View {
//            .fontWeight(.semibold)
//            .frame(width: 200, height: 100)
//            .background()
//            .cornerRadius(20)
//            .frame(width: 200, height: 100)
//            .offset(x: -6, y: -6)
//            .background(Color(UIColor(red: 0.04, green: 0.52, blue: 0.89, alpha: 1.00)))
//            .cornerRadius(20)
//            .font(.title3)
//        }
//    }
        
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


