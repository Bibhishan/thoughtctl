//
//  ListViewModel.swift
//  Thoughtctl_Task
//
//  Created by Bibhishan Biradar on 27/12/23.
//

import Foundation

class ListViewModel {
    
    private var listModel: [ListModel] = [ListModel(title: "Mahabaleshwar", date: "12-23-2023", postImage: ["1","3","5"]),
                                          ListModel(title: "Latur", date: "12-23-2023", postImage: ["2","4","6"]),
                                          ListModel(title: "Lonavala", date: "12-23-2023", postImage: ["5","2","3","5"]),
                                          ListModel(title: "Panchganiv", date: "12-23-2023", postImage: ["7"]),
                                          ListModel(title: "Alibaug", date: "12-23-2023", postImage: ["4","3","2"]),
                                          ListModel(title: "Matheran", date: "12-23-2023", postImage: ["3","1","6"]),
                                          ListModel(title: "Aurangabad", date: "12-23-2023", postImage: ["6","3","2"]),
                                          ListModel(title: "Ellora", date: "12-23-2023", postImage: ["5","3","4"]),
                                          ListModel(title: "Pune", date: "12-23-2023", postImage: ["1","3","7"])
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
