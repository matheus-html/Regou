//
//  Plantatela2.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 27/01/25.
//import SwiftUIimport SwiftUI
import Foundation
import SwiftUI
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

// Tela de destino após o cadastro
struct Plantatela3: View {
    var body: some View {
        Text("Cadastro realizado com sucesso!")
            .font(.title)
            .padding()
    }
}

#Preview {
    Plantatela2()
}
