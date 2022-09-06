//
//  ViewController.swift
//  CollectionViews
//
//  Created by Lesly Higuera on 5/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    // MARK: - Private Properties
    
    private let myColors = ["Rojo", "Azul", "Morado", "Negro", "Cafe", "verde"]
    private let adapter = ColorsViewControllerAdapter()
    
    
    // MARK: - UIViewController Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.dataSource = adapter
        myCollectionView.delegate = adapter
        
        adapter.favColors = myColors
        
        myCollectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
        
    }
}




