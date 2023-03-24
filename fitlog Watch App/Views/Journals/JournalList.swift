//
//  JournalList.swift
//  fitlog Watch App
//
//  Created by Nate Garza on 3/23/23.
//

import SwiftUI

struct JournalList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List(modelData.journalEntries){ journalEntry in
                    NavigationLink{
                        JournalDetail(journalEntry: journalEntry)
                    } label: {
                        JournalRow(journalEntry: journalEntry)
                    }
            }
            .navigationTitle("Journal Entries")
        }
    }
}

struct JournalList_Previews: PreviewProvider {
    static var previews: some View {
        JournalList()
            .environmentObject(ModelData())
    }
}
