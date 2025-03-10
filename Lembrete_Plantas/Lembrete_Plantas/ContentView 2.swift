//
//  ContentView.swift
//  Renato
//
//  Created by iredefbmac_32 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("mundo")
                .foregroundColor(Color.white)
                .background(Color.blue)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
