//
//  InboxController.swift
//  SlideMenuCode
//
//  Created by Jair Moreno Gaspar on 2/26/19.
//  Copyright © 2019 Jair Moreno Gaspar. All rights reserved.
//

import UIKit


class InboxController: UIViewController {
    
    //MARK: -Properties
    
    var inboxControllerDelegate: HomeControllerDelegate?
    
    //MARK: -Init
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        configureNavigationBar()
    }
    
    //MARK: -Handlers
    @objc func handleMenuToggle(){
        print("tap menu")
        inboxControllerDelegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Inbox Controller"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain,
                                                           target: self, action: #selector(handleMenuToggle))
    }
}
