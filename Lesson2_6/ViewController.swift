//
//  ViewController.swift
//  Lesson2_6
//
//  Created by Evgeny Mastepan on 04.12.2024.
//

import UIKit

class ViewController: UIViewController {

    let tableData = Card.cards
    
    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.register(CardCellView.self, forCellReuseIdentifier: CardCellView.identifier)
        return $0
    }(UITableView(frame: view.frame, style: .plain))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(tableView)
    }
}


