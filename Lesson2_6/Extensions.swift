//
//  Extensions.swift
//  Lesson2_6
//
//  Created by Evgeny Mastepan on 08.12.2024.
//

import UIKit

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
