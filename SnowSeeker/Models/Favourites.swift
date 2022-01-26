//
//  Favourites.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-26.
//

import Foundation

class Favourites: ObservableObject {
    private var resorts: Set<String>
    private let saveKey = "Favourites"
    
    init() {
        //load save data
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        objectWillChange.send()
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        objectWillChange.send()
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        //write out our data
    }
}
