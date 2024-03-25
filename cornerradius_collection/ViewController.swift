//
//  ViewController.swift
//  cornerradius_collection
//
//  Created by Karthiga on 12/23/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var image = ["img1","img2","img3","img4","img5"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! CustomCell
        cell.layer.cornerRadius = 3
        cell.clipsToBounds = true
        cell.layer.borderColor = UIColor.blue.cgColor
        cell.layer.borderWidth = 1
        
        cell.myimage.contentMode = . scaleAspectFill
        cell.myimage.image = UIImage(named: image[indexPath.row])
        return cell
    }
    

    @IBOutlet weak var collect: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collect.delegate = self
        collect.dataSource = self
    }


}

