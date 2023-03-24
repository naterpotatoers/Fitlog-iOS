//
//  JournalHome.swift
//  fitlog Watch App
//
//  Created by Nate Garza on 3/23/23.
//

import SwiftUI

struct JournalDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var journalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack{
                VStack(alignment: .leading) {
                    HStack{
                        Text(journalEntry.exercise)
                            .font(.title2)
                    }
                    HStack{
                        Text(String(journalEntry.reps) + " Reps")
                        Spacer()
                        Text(String(journalEntry.weight) + " lbs")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    Text(journalEntry.timestamp.displayDate)
                    
                    Divider()
                    Text("Notes")
                        .font(.title3)
                    Text(journalEntry.description)
                }
            }
            .padding()
        }
        .navigationTitle("Back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct JournalHome_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        JournalDetail(journalEntry: modelData.journalEntries[0])
            .environmentObject(ModelData())
    }
}

extension Date {
    var displayDate: String{
        self.formatted(.dateTime.month().day().hour().minute())
    }
}


