//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by Sean O'Dowd on 10/7/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView1: UICollectionView!
    
    var images: [String]!
    var names: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView1.delegate = self
        collectionView1.dataSource = self
        
        images = ["delta logo", "united logo", "american logo.jpeg"]
        
        names = ["Delta", "United", "American"]
    }
    
    // CollectionView functions
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "identifier1", for: indexPath) as! FirstCollectionViewCell
        
        cell.label1.text = names[indexPath.row]
        cell.iv1.image = UIImage(named: images[indexPath.row])
        return cell
    }
}

