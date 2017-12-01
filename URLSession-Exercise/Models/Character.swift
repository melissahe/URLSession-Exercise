//
//  StarWarsObject.swift
//  URLSession-Exercise
//
//  Created by C4Q on 12/1/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

struct Character: Codable {
    let name: String
    let height: String
    let mass: String
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let birthYear: String
    let gender: String
    let homeworldURL: String
    let filmURLs: [String]
    let speciesURLs: [String]
    let starshipURLs: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case height
        case mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender
        case homeworldURL = "homeworld"
        case filmURLs = "films"
        case speciesURLs = "species"
        case starshipURLs = "starships"
    }
}

