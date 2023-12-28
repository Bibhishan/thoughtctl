//
//  Item.swift
//  SwiftUIGrids
//
//  Created by Bibhishan Biradar on 28/12/23.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
}

extension Item {
    static var stubs: [Item] {
        [Item(title: "Mahabaleshwar",subtitle: "1/12/23 7:23 AM",imageName: "https://i.imgur.com/vbUdDpz.png"),
         Item(title: "Latur",subtitle: "23/11/23 5:23 PM",imageName: "https://i.imgur.com/PHwyh9P.png"),
         Item(title: "Lonavala: ",subtitle: "10/9/23 10:23 AM",imageName: "https://i.imgur.com/nwjaqcm.png"),
         Item(title: "Panchganiv",subtitle: "14/2/23 10:23 AM",imageName: "https://i.imgur.com/iHNHus7.png"),
         Item(title: "Alibaug",subtitle: "26/23/23 10:23 PM",imageName: "https://i.imgur.com/IjhJGr0.png"),
         Item(title: "Matheran",subtitle: "2/9/23 10:23 AM",imageName: "https://i.imgur.com/9wgfohR.jpg"),
         Item(title: "Aurangabad",subtitle: "23/11/23 5:23 PM",imageName: "https://i.imgur.com/zPfJsDk.jpg"),
         Item(title: "Ellora",subtitle: "21/8/23 10:23 PM",imageName: "https://i.imgur.com/fNatC3M.jpg"),
         Item(title: "Pune",subtitle: "23/11/23 5:23 PM",imageName: "https://i.imgur.com/Dou8XxY.jpg")
        ]
    }
}

