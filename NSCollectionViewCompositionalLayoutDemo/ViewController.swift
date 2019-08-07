//
//  ViewController.swift
//  NSCollectionViewCompositionalLayoutDemo
//
//  Created by Andrei Hogea on 30/07/2019.
//  Copyright © 2019 Nodes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    
    private var sectionColors: [UIColor] = [
        .systemRed,
        .systemBlue,
        .systemGreen,
        .systemTeal,
        .systemYellow,
        .systemGray
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeCollectionView()
    }
    
    private func makeCollectionView() {
        collectionView = UICollectionView.init(frame: .zero,
                                               collectionViewLayout: makeLayout())
        collectionView.backgroundColor = .orange
        collectionView.dataSource = self
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    private func makeLayout() -> UICollectionViewLayout {
    }
    
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.label.text = indexPath.section.description + " - " + indexPath.item.description
        cell.backgroundColor = sectionColors[indexPath.section]
        
        return cell
    }
    
}
