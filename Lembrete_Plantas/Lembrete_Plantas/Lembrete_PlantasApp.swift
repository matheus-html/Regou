//
//  Lembrete_PlantasApp.swift
//  Lembrete_Plantas
//
//  Created by iredefbmac_32 on 10/01/25.
//

import SwiftUI
import SwiftData

@main
struct Lembrete_PlantasApp: App {
    var body: some Scene {
        WindowGroup {
            Plantatela1()
                .modelContainer(for:[LembretePlanta.self])
        }
    }
}

