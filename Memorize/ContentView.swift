//
//  ContentView.swift
//  Memorize
//
//  Created by Ilqar Ilyasov on 5/24/20.
//  Copyright © 2020 IIlyasov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) {_ in
                CardView(isFaceUp: true)
            }
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
        .padding()
        .font(Font.largeTitle)
        .foregroundColor(Color.orange)
    }
}



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
