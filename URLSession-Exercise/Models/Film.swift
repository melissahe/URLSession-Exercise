//
//  StarWarsFilm.swift
//  URLSession-Exercise
//
//  Created by C4Q on 12/1/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

struct Film: Codable {
    let title: String
    let episodeID: Int
    let openingCrawl: String
    let director: String
    let producer: String
    let releaseDate: String
    let charactersURLs: [String]
    let planetsURLs: [String]
    let starshipsURLs: [String]
    let vehiclesURLs: [String]
    let speciesURLs: [String]
    
    enum CodingKeys: String, CodingKey {
        case title
        case episodeID = "episode_id"
        case openingCrawl = "opening_crawl"
        case director
        case producer
        case releaseDate = "release_date"
        case charactersURLs = "characters"
        case planetsURLs = "planets"
        case starshipsURLs = "starships"
        case vehiclesURLs = "vehicles"
        case speciesURLs = "species"
    }
}
