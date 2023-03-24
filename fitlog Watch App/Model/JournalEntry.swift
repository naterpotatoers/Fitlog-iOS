//
//  JournalEntry.swift
//  fitlog Watch App
//
//  Created by Nate Garza on 3/23/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct JournalEntry: Hashable, Codable, Identifiable {
    var id: Int
    var username: String
    var timestamp: Date
    var exercise: String
    var description: String
    var type: String
    var duration: Float
    var intensity: String
    var equipment: String
    var reps: Int
    var weight: Float
}




