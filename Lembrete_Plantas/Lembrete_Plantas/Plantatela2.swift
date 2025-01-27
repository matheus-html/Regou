//
//  Plantatela2.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 27/01/25.
//
import SwiftUI

struct Plantatela2: View {
    @State var nome = ""
    @State var hora = Date()
    //@State var dia = ""
    @State var especie = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Cadastre sua planta")
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
            Text("Nome da planta")
            TextField("Nome da planta", text:$nome)
            
            Text("Horario")
            DatePicker("Hora", selection: $hora, displayedComponents: .hourAndMinute)
            
            //Text("Dia")
            
            Text("Espécie")
            TextField("Espécie", text:$especie)
            
            NavigationLink(destination: Plantatela3()){
                Text("Cadastrar planta")
                    .padding()
                    .frame(maxWidth: 200)
                    .cornerRadius(10)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }
        }
    }
}
