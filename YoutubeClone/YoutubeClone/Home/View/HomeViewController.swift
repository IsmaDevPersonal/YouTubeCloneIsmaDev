//
//  HomeViewController.swift
//  YoutubeClone
//
//  Created by Ismael Ruiz on 25/3/22.
//

import UIKit

class HomeViewController: UIViewController {

    
    lazy var presenter = HomePresenter(delegate: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task{
            await presenter.getHomeObjects()
        }

        // Do any additional setup after loading the view.
    }

    
  
}

extension HomeViewController : HomeViewProtocol{
    func getData(list: [[Any]]) {
        print("list: ", list)
    }
    
    
}
