//
//  MenuController.swift
//  SlideMenuCode
//
//  Created by Jair Moreno Gaspar on 2/14/19.
//  Copyright © 2019 Jair Moreno Gaspar. All rights reserved.
//

import UIKit

private let cellId = "cellId"

class MenuController: UIViewController {
    
    
    //MARK: -Properties
    
    var tableView: UITableView!
    var homeControllerDelegate: HomeControllerDelegate?
    
    //MARK: -Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    //MARK: -Handlers
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: cellId)
        tableView.backgroundColor = .darkGray
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
    }
    
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! MenuOptionCell
     
        
        if let menuOption = MenuOption(rawValue: indexPath.row) {
            cell.descriptionLabel.text = menuOption.description
            cell.iconImageView.image = menuOption.image
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let menuOption = MenuOption(rawValue: indexPath.row) {
            homeControllerDelegate?.handleMenuToggle(forMenuOption: menuOption)
        }
    }
    
}


