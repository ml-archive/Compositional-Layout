//
//  BackgroundDecorationView.swift
//  NSCollectionViewCompositionalLayoutDemo
//
//  Created by Andrei Hogea on 08/08/2019.
//  Copyright © 2019 Nodes. All rights reserved.
//

import UIKit

class BackgroundDecorationView: UICollectionReusableView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .purple
        layer.cornerRadius = 12
        layer.masksToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("not implemented")
    }
}
