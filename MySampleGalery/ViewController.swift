//
//  ViewController.swift
//  MySampleGalery
//
//  Created by Yuliia Khrupina on 3/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var imageCollection: UICollectionView!
    
    let images: [UIImage] = [
        UIImage(named: "pic1")!,
        UIImage(named: "pic2")!,
        UIImage(named: "pic3")!,
        UIImage(named: "pic4")!,
        UIImage(named: "pic5")!,
        UIImage(named: "pic6")!,
        UIImage(named: "pic7")!,
        UIImage(named: "pic8")!,
        UIImage(named: "pic9")!,
        UIImage(named: "pic10")!,
        UIImage(named: "pic11")!,
        UIImage(named: "pic12")!,
        UIImage(named: "pic13")!,
        UIImage(named: "pic14")!,
        UIImage(named: "pic15")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageCollection.dataSource = self
        imageCollection.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollection.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CellItem
        cell.imageHolder.image = images[indexPath.item]
        return cell
    }
    
}

