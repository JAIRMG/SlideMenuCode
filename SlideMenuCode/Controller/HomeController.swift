//
//  HomeController.swift
//  SlideMenuCode
//
//  Created by Jair Moreno Gaspar on 2/14/19.
//  Copyright © 2019 Jair Moreno Gaspar. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    
    //MARK: -Properties
    
    var homeControllerDelegate: HomeControllerDelegate?
    
    //MARK: -Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    //MARK: -Handlers
    
    @objc func handleMenuToggle(){
        print("tap menu")
        homeControllerDelegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain,
                                                           target: self, action: #selector(handleMenuToggle))
    }
    
}
