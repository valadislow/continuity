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
                .font(.system(size: 20, weight: .heavy, design: .monospaced))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .scaleEffect(2)
                .padding(40)
                .rotation3DEffect(.degrees(35), axis: (x:4 , y:0, z:0))
            
        }
    }
}




