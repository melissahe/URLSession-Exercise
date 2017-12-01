//
//  AppError.swift
//  URLSession-Exercise
//
//  Created by C4Q on 12/1/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

enum AppError: Error {
    case badURL
    case couldNotParseJSON(rawError: Error)
    case other(rawError: Error)
}
