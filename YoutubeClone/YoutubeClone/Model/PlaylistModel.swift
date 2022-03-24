//
//  PlaylistModel.swift
//  YoutubeClone
//
//  Created by Ismael Ruiz on 24/3/22.
//

import Foundation


struct PlaylistModel: Decodable{
    let kind : String
    let etag : String
    let pageInfo : PageInfo
    let items : [Items]
    
    
    struct Items : Decodable{
        let kind : String
        let etag : String
        let id : String
        let snippet : Snippet
        let contentDetails : ContentDetails
        
        
        
        struct Snippet : Decodable{
            let publishedAt : String
            let channelId : String
            let title : String
            let description : String
            let thumbnails : Thumbnails
            let channelTitle : String
            let localized : Localized
            
            
            struct Thumbnails : Decodable{
                let medium : Medium
                
                
                struct Medium : Decodable{
                    let url : String
                    let width : Int
                    let heigth : Int
                    
                }
                
                
            }
            
            
            struct Localized : Decodable{
                let title : String
                let description : String
            }
            
            
            
        } // End of Snippet
        

        struct ContentDetails : Decodable{
            let itemCount : Int
        }
        
    } // End of Items

    
    
    
    struct PageInfo : Decodable{
        let totalResults : Int
        let resultsPerPage : Int
    }
    
    
}
