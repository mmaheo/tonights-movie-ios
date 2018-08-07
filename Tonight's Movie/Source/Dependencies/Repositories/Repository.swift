//
//  Repository.swift
//  Tonight's Movie
//
//  Created by Maxime Maheo on 06/08/2018.
//  Copyright © 2018 Maxime Maheo. All rights reserved.
//

import Alamofire

protocol HasRepository {
    
    // MARK: - Properties -
    var repository: Repository { get }
}

protocol Repository {
    
    func getPopularTVShows(page: Int, completion: @escaping (Result<[TVShow]>) -> Void)
    func getNowPlayingMovies(page: Int, completion: @escaping (Result<[Movie]>) -> Void)
    func getUpcomingMovies(page: Int, completion: @escaping (Result<[Movie]>) -> Void)
    
}

