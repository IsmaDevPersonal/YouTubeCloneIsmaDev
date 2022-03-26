//
//  HomePresenter.swift
//  YoutubeClone
//
//  Created by Ismael Ruiz on 25/3/22.
//

import Foundation

protocol HomeViewProtocol : AnyObject{
    func getData(list : [[Any]])
}


class HomePresenter{
    
    var provider : HomeProviderProtocol
    weak var delegate : HomeViewProtocol?
    
    init(delegate : HomeViewProtocol, provider: HomeProvider = HomeProvider()){
        self.provider = provider
        self.delegate = delegate
    }
    
    
    func getVideos(){
        
    }
}
