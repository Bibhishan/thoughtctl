//
//  LayoutType.swift
//  SwiftUIGrids
//
//  Created by Bibhishan Biradar on 28/12/23.
//

import SwiftUI

enum LayoutType:  CaseIterable {
    case single
    case double
    case adaptive
}

extension LayoutType {
    
    var columns: [GridItem] {
        switch self {
        case .single:
            return [
                GridItem(.flexible(), spacing: 0)
            ]
            
        case .double:
            return [
                GridItem(.flexible(), spacing: 1),
                GridItem(.flexible(), spacing: 1)
            ]
            
        case .adaptive:
            return [
                GridItem(.adaptive(minimum: 100), spacing: 1)
            ]
        }
    }
    
}

