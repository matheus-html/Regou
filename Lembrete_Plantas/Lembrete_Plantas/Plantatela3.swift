//
//  Plantatela3.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 27/01/25.
//

import SwiftUI

struct Plantatela3: View {
    var plantas: [LembretePlanta]

    var body: some View {
        VStack(spacing: 20) {
            Text("Minhas plantas")
                .font(.title)

            List(plantas, id: \.nome) { planta in
                VStack(alignment: .leading) {
                    Text(planta.nome)
                        .font(.headline)
                        .background(Color.green)
                    Text("Espécie: \(planta.especie)")
                        .font(.subheadline)
                    Text("Horário: \(planta.hora, formatter: dateFormatter)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
    }
}

// Formata a data para exibir corretamente
private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    return formatter
}()

#Preview {
    Plantatela3(plantas: [])
}
