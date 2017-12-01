//
//  StarWarsStarship.swift
//  URLSession-Exercise
//
//  Created by C4Q on 12/1/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

struct Starship: Codable {
    let name: String
    let model: String
    let manufacturer: String
    let costInCredits: String
    let length: String
    let maxAtmospheringSpeed: String
    let crewCount: String
    let passengers: String
    let cargoCapacity: String
    let hyperDriveRating: String
    let MGLT: String
    let starshipClass: String
    let pilotsURLs: [String]
    let filmsURLs: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case model
        case manufacturer
        case costInCredits = "cost_in_credits"
        case length
        case maxAtmospheringSpeed = "max_atmosphering_speed"
        case crewCount = "crew_count"
        case passengers
        case cargoCapacity = "cargo_capacity"
        case hyperDriveRating = "hyper_drive_rating"
        case MGLT
        case starshipClass = "starship_class"
        case pilotsURLs = "pilot"
        case filmsURLs = "films"
    }
    
}
