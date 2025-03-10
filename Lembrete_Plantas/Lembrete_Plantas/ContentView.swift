//
//  ContentView.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 10/01/25.
//
//  ContentView.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 10/01/25.
//

import SwiftUI


struct Plantatela1: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 20) { // Espaçamento vertical entre os elementos
                
                Image("novo-icone.png")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Spacer() // Adiciona espaço no topo para centralizar o conteúdo
                
                Text("Bem vindo ao lembrete de cuidado das plantas")
                    .font(.title) // Tamanho de texto maior
                    .multilineTextAlignment(.center)
                    .padding(.horizontal) // Adiciona margem horizontal
                
                NavigationLink(destination: Plantatela2()){
                    Text("Começar")
                        .padding()
                        .frame(maxWidth: 200)
                        .cornerRadius(10)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                .padding()        }
        }
    }
    
  
    
    
}
