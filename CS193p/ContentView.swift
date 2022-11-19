//
//  ContentView.swift
//  CS193p
//
//  Created by Balázs Képli on 14/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🚂", "🚀", "🚁", "🚛", "🇯🇵", "✈️", "🚘", "🚢",
    "🛩", "🚄", "🛴", "🛶", "⛴", "🛫", "🛬", "🛵", "🚜", "🌋", "🏭", "⛱", "⛺️", "⛪️", "💻", "📹"]
    @State var emojiCount = 24;
    
   
    var add: some View {
        Button {
            if (emojiCount < emojis.count) {
                emojiCount += 1
            }
        } label: {
                Image(systemName: "plus.circle")
            }
    }
    
    var remove: some View {
        Button {
            if (emojiCount > 1) {
                emojiCount -= 1
            }
        } label: {
                Image(systemName: "minus.circle")
            }
    }
    
    var body: some View {
        VStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                            ForEach(emojis[0..<emojiCount], id: \.self) {emoji in
                                CardView(content: emoji)
                                    .aspectRatio(2/3, contentMode: .fill)
                            }
                        }
                        .padding(.horizontal)
                        .foregroundColor(.red)
                }
                Spacer()
                HStack {
                        remove
                        Spacer()
                        add
                }
                .foregroundColor(.blue)
                .font(.largeTitle)
                .padding(.horizontal)
        }
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
