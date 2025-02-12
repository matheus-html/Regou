//
//  Plantatela3.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 27/01/25.
//

import SwiftUI

struct Plantatela3: View {
    
    @State private var pesquisa: String = ""
    
    var body: some View {
        
        
        
        VStack(spacing: 20) {
            Text("Minhas plantas")
                .font(.title)
            
            TextField("Pesquisar", text: $pesquisa)
                .textFieldStyle(.roundedBorder)
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(8)
        }
        .padding()
        
    }
    
    #Preview {
        Plantatela2()
    }
    
}
