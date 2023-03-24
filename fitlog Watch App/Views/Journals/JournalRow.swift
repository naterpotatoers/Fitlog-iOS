//
//  JournalRow.swift
//  fitlog Watch App
//
//  Created by Nate Garza on 3/23/23.
//

import SwiftUI

struct JournalRow: View {
    var journalEntry: JournalEntry
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text(journalEntry.exercise)
                    .font(.title3)
                HStack{
                    Text(String(journalEntry.reps) + " reps")
                    Spacer()
                    Text(String(journalEntry.weight) + " lbs")
                }
                .font(.subheadline)
            }
        }
    }
}

struct JournalRow_Previews: PreviewProvider {
    static var journalEntries = ModelData().journalEntries
    
    static var previews: some View {
        Group{
            JournalRow(journalEntry: journalEntries[0])
                .previewDisplayName(journalEntries[0].exercise)
            JournalRow(journalEntry: journalEntries[6])
                .previewDisplayName(journalEntries[6].exercise)
        }
    }
}
