//
//  ContentView.swift
//  CS193p
//
//  Created by Balázs Képli on 14/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🚂", "🚀", "🚁", "🚛", "🇯🇵"]
    
    var body: some View {
        HStack {
            ForEach(emojis, id: \.self) {emoji in
                CardView(content: emoji)
            }
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)

    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            
            if isFaceUp {
                shape.fill(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill(.red)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
