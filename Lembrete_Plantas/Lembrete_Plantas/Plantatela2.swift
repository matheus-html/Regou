//
//  Plantatela2.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 27/01/25.
//import SwiftUIimport SwiftUI

import SwiftUI
import SwiftData
import Foundation

struct LembretePlanta: Identifiable {
    var id = UUID()
    var nome = String()
    var hora = Date()
    var especie = String()
}

struct Plantatela2: View {
    @State private var nome: String = ""
    @State private var hora: Date = Date()
    @State private var especie: String = ""
    @State private var plantas: [LembretePlanta] = []

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Cadastre sua planta")
                    .font(.title)
                    .padding(.horizontal)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Nome da planta").font(.headline)
                    TextField("Nome da planta", text: $nome)
                        .background(Color.green)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)

                    /*Text("Horário").font(.headline)
                        .background(Color.green)
                    */
                    DatePicker("Hora", selection: $hora, displayedComponents: .hourAndMinute)
                        .padding(.horizontal)

                    Text("Espécie").font(.headline)
                    TextField("Espécie", text: $especie)
                        .background(Color.green)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                }

                Button("Cadastrar planta") {
                    let novaPlanta = LembretePlanta(nome: nome, hora: hora, especie: especie)
                    plantas.append(novaPlanta)

                    // Limpa os campos após cadastrar
                    nome = ""
                    hora = Date()
                    especie = ""
                }
                .frame(maxWidth: 200)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)

                NavigationLink(destination: Plantatela3(plantas: plantas)) {
                    Text("Ver minhas plantas")
                        .frame(maxWidth: 200)
                        .padding()
                        .background(Color.blue)
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
