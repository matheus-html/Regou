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
            VStack(spacing: 20) {
                
                Image("planta")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Spacer()
                
                Text("Bem vindo ao lembrete de cuidado das plantas")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
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
