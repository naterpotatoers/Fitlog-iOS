//
//  fitlogApp.swift
//  fitlog Watch App
//
//  Created by Nate Garza on 3/23/23.
//

import SwiftUI

@main
struct fitlog_Watch_AppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
