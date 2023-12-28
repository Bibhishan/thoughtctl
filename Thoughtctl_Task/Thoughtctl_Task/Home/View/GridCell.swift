//
//  GridCell.swift
//  Thoughtctl_Task
//
//  Created by Bibhishan Biradar on 27/12/23.
//

import UIKit
import Kingfisher

class GridCell: UICollectionViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    @IBOutlet weak var insideCollectionView: UICollectionView!
    
    private var postImage: [String] = []
    private let postImageCellID = "PostImageCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.myViewDesign()
        backView.clipsToBounds = true
        insideCollectionView.delegate = self
        insideCollectionView.dataSource = self
        let nib = UINib(nibName: postImageCellID, bundle: nil)
        insideCollectionView?.register(nib, forCellWithReuseIdentifier: postImageCellID)
    }
    
    func updateView(data: ListModel){
        titleLbl.text = data.title
        dateLbl.text = data.date
        self.postImage = data.postImage
        DispatchQueue.main.async {
            self.insideCollectionView.reloadData()
        }
    }
}

extension GridCell: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: postImageCellID, for: indexPath) as? PostImageCell {
            cell.postImage.kf.setImage(with: URL(string: postImage[indexPath.row]))
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = self.insideCollectionView.frame.size.width
        return CGSize(width: size, height: size)
    }
}
