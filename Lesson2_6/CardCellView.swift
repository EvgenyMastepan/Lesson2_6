//
//  CardCellView.swift
//  Lesson2_6
//
//  Created by Evgeny Mastepan on 08.12.2024.
//

import Foundation
import UIKit

class CardCellView: UITableViewCell {
    static let identifier: String = "CardCellView"
    
    lazy var mainView: UIView = {
        $0.backgroundColor = .systemGray6
        $0.layer.cornerRadius = 30
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubviews(titulLabel, cardImage, titleLabel, extextLabel, mainTextLabel, cardButton)
        return $0
    }(UIView())
    
    lazy var titulLabel: UILabel = {
        $0.font = .systemFont(ofSize: 20, weight: .heavy)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var titleLabel: UILabel = {
        $0.font = .systemFont(ofSize: 20, weight: .heavy)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var extextLabel: UILabel = {
        $0.font = .systemFont(ofSize: 12, weight: .light)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var mainTextLabel: UILabel = {
        $0.font = .systemFont(ofSize: 16, weight: .regular)
        $0.numberOfLines = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    lazy var cardImage: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 30
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    lazy var cardButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemGreen
        $0.setTitle("Подробно...", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        return $0
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(mainView)
        setupConstraints()
    }
    
    func setupCell(card: Card){
        titulLabel.text = card.titul
        cardImage.image = UIImage(named: card.image)
        titleLabel.text = card.title
        extextLabel.text = card.extext
        mainTextLabel.text = card.maintext
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            mainView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            mainView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            mainView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            titulLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            titulLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 15),
            titulLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            titulLabel.heightAnchor.constraint(equalToConstant: 24),
            
            cardImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 15),
            cardImage.topAnchor.constraint(equalTo: titulLabel.bottomAnchor, constant: 15),
            cardImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -15),
            cardImage.heightAnchor.constraint(equalToConstant: 191),
            
            titleLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            titleLabel.topAnchor.constraint(equalTo: cardImage.bottomAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            titleLabel.heightAnchor.constraint(equalToConstant: 24),
            
            extextLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            extextLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            extextLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            extextLabel.heightAnchor.constraint(equalToConstant: 15),
            
            mainTextLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 15),
            mainTextLabel.topAnchor.constraint(equalTo: extextLabel.bottomAnchor, constant: 15),
            mainTextLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -15),
            mainTextLabel.heightAnchor.constraint(equalToConstant: 57),
            
            cardButton.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 15),
            cardButton.topAnchor.constraint(equalTo: mainTextLabel.bottomAnchor, constant: 30),
            cardButton.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -15),
            cardButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

