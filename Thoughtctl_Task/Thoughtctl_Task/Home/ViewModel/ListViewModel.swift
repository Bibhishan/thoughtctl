//
//  ListViewModel.swift
//  Thoughtctl_Task
//
//  Created by Bibhishan Biradar on 27/12/23.
//

import Foundation

class ListViewModel {
    
    private var listModel: [ListModel] = [ListModel(title: "Mahabaleshwar", date: "1/12/23 7:23 AM", postImage: ["https://i.imgur.com/vbUdDpz.png","https://i.imgur.com/PHwyh9P.png","https://i.imgur.com/nwjaqcm.png"]),
                                          ListModel(title: "Latur", date: "23/11/23 5:23 PM", postImage: ["https://i.imgur.com/iHNHus7.png","https://i.imgur.com/IjhJGr0.png"]),
                                          ListModel(title: "Lonavala", date: "10/9/23 10:23 AM", postImage: ["https://i.imgur.com/9wgfohR.jpg", "https://i.imgur.com/zPfJsDk.jpg"]),
                                          ListModel(title: "Panchganiv", date: "26/23/23 10:23 PM", postImage: ["https://i.imgur.com/fNatC3M.jpg"]),
                                          ListModel(title: "Alibaug", date: "2/9/23 10:23 AM", postImage: ["https://i.imgur.com/Dou8XxY.jpg","https://i.imgur.com/sbP0lAr.jpg"]),
                                          ListModel(title: "Matheran", date: "8/8/23 9:23 PM", postImage: ["https://i.imgur.com/bghYBlq.jpg"]),
                                          ListModel(title: "Aurangabad", date: "14/2/23 10:23 AM", postImage: ["https://i.imgur.com/eEQwEqy.jpg", "https://i.imgur.com/2IewVit.jpg"]),
                                          ListModel(title: "Ellora", date: "21/8/23 10:23 PM", postImage: ["https://i.imgur.com/PHwyh9P.png","https://i.imgur.com/sbP0lAr.jpg","https://i.imgur.com/eEQwEqy.jpg"]),
                                          ListModel(title: "Pune", date: "22/6/23 11:23 AM", postImage: ["https://i.imgur.com/fNatC3M.jpg","https://i.imgur.com/PHwyh9P.png"])
    ]
    
    func getData(index: Int) -> ListModel {
        return listModel[index]
    }
    
    func listCount() -> Int{
        return listModel.count
    }
    
    func getAllData() -> [ListModel]{
        return listModel
    }
}
