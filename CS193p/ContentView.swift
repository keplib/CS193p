//
//  ContentView.swift
//  CS193p
//
//  Created by Balázs Képli on 14/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack {
            CardView()
            CardView()
            CardView()
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
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 3)
            Text("✈️")
                .font(.largeTitle)
        }
    }
}
