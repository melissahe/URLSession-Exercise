//
//  NetworkHelper.swift
//  URLSession-Exercise
//
//  Created by C4Q on 12/1/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

class NetworkHelper {
    private init() {}
    static let manager = NetworkHelper()
    private let urlSession = URLSession(configuration: .default)
    func getData(from url: URL, completionHandler: @escaping (Data) -> Void, errorHandler: @escaping (Error) -> Void) {
        urlSession.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            DispatchQueue.main.async {
                if let error = error {
                    errorHandler(error)
                    return
                }
                
                if let data = data {
                    completionHandler(data)
                }
                
            }
        }.resume()
    }
    
    func getData(from urlString: String, completionHandler: @escaping (Data) -> Void, errorHandler: @escaping (Error) -> Void) {
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        urlSession.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            DispatchQueue.main.async {
                
                if let error = error {
                    errorHandler(error)
                    return
                }
                
                if let data = data {
                    completionHandler(data)
                }
                
            }
            }.resume()
    }
}
