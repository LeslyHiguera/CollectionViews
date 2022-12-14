//
//  MyCustomCollectionViewCell.swift
//  CollectionViews
//
//  Created by Lesly Higuera on 5/09/22.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .lightGray
       
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
    }

}
