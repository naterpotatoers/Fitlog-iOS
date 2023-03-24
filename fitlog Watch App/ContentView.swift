//
//  ContentView.swift
//  fitlog Watch App
//
//  Created by Nate Garza on 3/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .journal
    
    enum Tab {
        case journal
        case workout
    }
    
    var body: some View {
        JournalList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
