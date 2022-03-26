//
//  HomeProvider.swift
//  YoutubeClone
//
//  Created by Ismael Ruiz on 25/3/22.
//

import Foundation

protocol HomeProviderProtocol{
    func getVideos(searchString : String, channelId : String) async throws -> VideosModel
}

class HomeProvider : HomeProviderProtocol{
    func getVideos(searchString : String, channelId : String) async throws -> VideosModel{
        var queryParams : [String:String] = ["part":"snippet"]
        if !channelId.isEmpty{
            queryParams["channelId"] = channelId
        }
        
        if !searchString.isEmpty{
            queryParams["q"] = searchString
        }
        let requestModel = RequestModel(endpoint: .search, queryItems: queryParams)
        
        do{
            let model = try await ServiceLayer.callService(requestModel, VideosModel.self)
            return model
        }catch{
            print(error)
            throw error
        }
        
    }
}
