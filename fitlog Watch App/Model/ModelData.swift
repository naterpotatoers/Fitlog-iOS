//
//  ModelData.swift
//  fitlog Watch App
//
//  Created by Nate Garza on 3/23/23.
//

import Foundation


import Combine

final class ModelData: ObservableObject {
    @Published var journalEntries: [JournalEntry] = load("journalData.json")
    
    var categories: [String: [JournalEntry]] {
        Dictionary(
            grouping: journalEntries,
            by: { $0.exercise }
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
