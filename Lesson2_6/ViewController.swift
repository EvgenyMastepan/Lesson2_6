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

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CardCellView.identifier, for: indexPath) as? CardCellView
        else { return UITableViewCell() }
        
        let card = tableData[indexPath.row]
        cell.setupCell(card: card)
        return cell
    }
}

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
