//
//  CharacterAPIClient.swift
//  URLSession-Exercise
//
//  Created by C4Q on 12/1/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

class CharacterAPIClient {
    private init() {}
    static let manager = CharacterAPIClient()
    func getCharacters(from urlString: String, completionHandler: @escaping (Character) -> Void, errorHandler: @escaping (AppError) -> Void) {
        guard let url = URL(string: urlString) else {
            errorHandler(.badURL)
            return
        }
        
        NetworkHelper.manager.getData(
            from: url,
            completionHandler: { (data) in
                do {
                    let character = try JSONDecoder().decode(Character.self, from: data)
                    completionHandler(character)
                } catch let error {
                    errorHandler(.couldNotParseJSON(rawError: error))
                }
        },
            errorHandler: {errorHandler(.other(rawError: $0))})
    }
}
