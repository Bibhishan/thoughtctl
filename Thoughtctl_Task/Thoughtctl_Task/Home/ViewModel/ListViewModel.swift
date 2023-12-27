//
//  ListViewModel.swift
//  Thoughtctl_Task
//
//  Created by Bibhishan Biradar on 27/12/23.
//

import Foundation

class ListViewModel {
    
    private var listModel: [ListModel] = [ListModel(title: "Mahabaleshwar", date: "1/12/23 7:23 AM", postImage: ["1","3","5"]),
                                          ListModel(title: "Latur", date: "23-11/23 5:23 PM", postImage: ["2","4","6"]),
                                          ListModel(title: "Lonavala", date: "10/9/23 10:23 AM", postImage: ["5","2","3","5"]),
                                          ListModel(title: "Panchganiv", date: "26/23/23 10:23 PM", postImage: ["7"]),
                                          ListModel(title: "Alibaug", date: "2/9/23 10:23 AM", postImage: ["4","3","2"]),
                                          ListModel(title: "Matheran", date: "8/8/23 9:23 PM", postImage: ["3","1","6"]),
                                          ListModel(title: "Aurangabad", date: "14/2/23 10:23 AM", postImage: ["6","3","2"]),
                                          ListModel(title: "Ellora", date: "21/8/23 10:23 PM", postImage: ["5","3","4"]),
                                          ListModel(title: "Pune", date: "22/6/23 11:23 AM", postImage: ["1","3","7"])
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
