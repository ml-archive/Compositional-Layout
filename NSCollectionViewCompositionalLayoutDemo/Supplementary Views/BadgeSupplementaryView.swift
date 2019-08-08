//
//  BadgeSupplementaryView.swift
//  NSCollectionViewCompositionalLayoutDemo
//
//  Created by Andrei Hogea on 08/08/2019.
//  Copyright © 2019 Nodes. All rights reserved.
//

import UIKit

class BadgeSupplementaryView: UICollectionReusableView {

    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label.textAlignment = .center
        label.textColor = .white
        backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .body)
        addSubview(label)
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
}
