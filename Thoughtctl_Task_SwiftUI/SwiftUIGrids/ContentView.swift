//
//  ContentView.swift
//  SwiftUIGrids
//
//  Created by Bibhishan Biradar on 28/12/23.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    
    var items = Item.stubs
    @State var selectedLayout: LayoutType = .single
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                Picker("Layout Style", selection: $selectedLayout) {
                    ForEach(LayoutType.allCases, id: \.self) { type in
                        switch type {
                        case .single:
                            Image(systemName: "list.bullet")
                        case .double:
                            Image(systemName: "square.grid.2x2")
                        case .adaptive:
                            Image(systemName: "square.grid.3x3")
                        }
                    }
                }.pickerStyle(SegmentedPickerStyle())
                ScrollView {
                    LazyVGrid(columns: selectedLayout.columns, spacing: 1, content: {
                        ForEach(searchResults) { (item)  in
                            switch selectedLayout {
                            case .single:
                                SingleRow(title: item.title, date: item.subtitle, postImage: item.imageName)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                
                            default:
                                KFImage(URL(string: item.imageName)!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                            }
                        }
                    })
                }
            }
        }
        .searchable(text: $searchText)
        var searchResults: [Item] {
            if searchText.isEmpty {
                return Item.stubs
            } else {
                return Item.stubs.filter { $0.title.contains(searchText) }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(selectedLayout: .single)
            ContentView(selectedLayout: .double)
            ContentView(selectedLayout: .adaptive)
        }
    }
}
