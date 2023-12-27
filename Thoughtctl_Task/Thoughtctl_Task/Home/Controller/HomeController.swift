//
//  ViewController.swift
//  Thoughtctl_Task
//
//  Created by Bibhishan Biradar on 26/12/23.
//

import UIKit

class HomeController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet var collectionView: UICollectionView!
    private  var searchBarTextField: UISearchBar!
    
    private let gridCellID = "GridCell"
    private let listCellID = "ListCell"
    private var listGridBool: Bool = false
    
    private var viewModel = ListViewModel()
    private var filterArray = [ListModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        makeSearchBar()
        setupBarButton()
    }
    
    private func setupBarButton(){
        let logoutBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .plain, target: self, action: #selector(logoutUser(_:)))
        self.navigationItem.rightBarButtonItem  = logoutBarButtonItem
    }
    
    @objc func logoutUser(_ sender: UIBarButtonItem){
        sender.image = listGridBool ? UIImage(systemName: "list.dash") : UIImage(systemName: "rectangle.grid.2x2")
        listGridBool = !listGridBool
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    private func makeSearchBar() {
        self.searchBarTextField = UISearchBar()
        searchBarTextField.sizeToFit()
        searchBarTextField.autocapitalizationType = .none
        searchBarTextField.delegate = self
        searchBarTextField.searchTextField.font = UIFont(name: "Roboto", size: 14)
        searchBarTextField.placeholder = "Search"
        searchBarTextField.searchTextField.backgroundColor = .systemGray6.withAlphaComponent(0.2)
        navigationItem.titleView = self.searchBarTextField
    }
    
    private func setupCollectionView(){
        let gNib = UINib(nibName: gridCellID, bundle: nil)
        collectionView?.register(gNib, forCellWithReuseIdentifier: gridCellID)
        let lNib = UINib(nibName: listCellID, bundle: nil)
        collectionView?.register(lNib, forCellWithReuseIdentifier: listCellID)
        self.filterArray = viewModel.getAllData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBarTextField.resignFirstResponder()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterArray = searchText.isEmpty ? viewModel.getAllData() : viewModel.getAllData().filter { data in
            return data.title.range(of: searchText, options: .caseInsensitive) != nil
        }
        collectionView.reloadData()
    }
    
}

extension HomeController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filterArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        if listGridBool {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: listCellID, for: indexPath) as? ListCell {
                cell.updateView(data: filterArray[indexPath.row])
                return cell
            }
        }else{
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gridCellID, for: indexPath) as? GridCell {
                cell.updateView(data: filterArray[indexPath.row])
                return cell
            }
        }
        return UICollectionViewCell()
    }
}

extension HomeController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if listGridBool {
            let width = (view.frame.width) - 4
            return CGSize(width: width, height: 80)
        } else {
            let width = (self.view.frame.size.width - 13) / 2
            return CGSize(width: width, height: 200)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
     
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
}
