//
//  CollectionViewController.swift
//  CollectionViewSp
//
//  Created by Duc Anh on 4/4/19.
//  Copyright © 2019 Duc Anh. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    let numbers = [Int](1...100)
    let WIDTH_SCREEN = UIScreen.main.bounds.width
    let numberOfItems: CGFloat = 4
    let padding: CGFloat = 8
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return numbers.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        cell.myLabel.text = "\(numbers[indexPath.row])"
        
        return cell
    }
    
    
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    //    kích thước của item
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSize = (WIDTH_SCREEN - padding * 2 - padding * (numberOfItems - 1))/numberOfItems
        return CGSize(width: itemSize, height: itemSize)
    }
    
    //    khoảng cách giữa mỗi cạnh của section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
    }
    
    //    khoảng cách giữa các dòng section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return padding
    }
    
    //    khoảng cách giữa các cột section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return padding
    }

}
