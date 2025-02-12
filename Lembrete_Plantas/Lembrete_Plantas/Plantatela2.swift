//
//  Plantatela2.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 27/01/25.
//import SwiftUIimport SwiftUI
import SwiftUI
import Foundation
import SwiftData

class LembretePlanta {
    var nome: String
    var hora: Date
    var especie: String
    
    init(nome: String, hora: Date, especie: String) {
        self.nome = nome
        self.hora = hora
        self.especie = especie
    }
}

struct Plantatela2: View {
    @State private var nome: String = ""
    @State private var hora: Date = Date()
    @State private var especie: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Cadastre sua planta")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Nome da planta")
                        .font(.headline)
                    TextField("Nome da planta", text: $nome)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                    
                    Text("Horário")
                        .font(.headline)
                    DatePicker("Hora", selection: $hora, displayedComponents: .hourAndMinute)
                        .padding(.horizontal)
                    
                    Text("Espécie")
                        .font(.headline)
                    TextField("Espécie", text: $especie)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                }
                
                NavigationLink(destination: Plantatela3()) {
                    Text("Cadastrar planta")
                        .frame(maxWidth: 200)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top)
            }
            .padding()
        }
    }
}


#Preview {
    Plantatela2()
}
