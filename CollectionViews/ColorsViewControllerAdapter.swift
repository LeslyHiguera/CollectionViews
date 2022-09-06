//
//  ColorsViewControllerAdapter.swift
//  CollectionViews
//
//  Created by Lesly Higuera  on 6/09/22.
//

import UIKit

class ColorsViewControllerAdapter: NSObject {
    
    var favColors: [String] = []
    
    let myCellWidth = UIScreen.main.bounds.width / 2
}

// MARK: - UICollectionViewDataSource

extension ColorsViewControllerAdapter: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
         2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        favColors.count
    }
 
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.myFirstLabel.text = favColors[indexPath.row]
        cell.backgroundColor = .lightGray
        
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate

extension ColorsViewControllerAdapter: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row) \(favColors[indexPath.row])")
    }
}
// MARK: - UICollectionViewDelegateFlowLayout

extension ColorsViewControllerAdapter: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: myCellWidth, height: myCellWidth)
    }
}
