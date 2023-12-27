//
//  UIView+Extension.swift
//  Thoughtctl_Task
//
//  Created by Bibhishan Biradar on 26/12/23.
//

import UIKit
import Foundation

extension UIView {
   
    func myViewDesign(cornerRadius: CGFloat = 8, borderColor: CGColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), borderWidth: CGFloat = 0.5, shadowRadius: CGFloat = 1, shadowColor: CGColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), shadowOffset: CGSize = CGSize(width: 1, height: 1), backgroundColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), masksToBounds: Bool = false) {
        layer.cornerRadius = cornerRadius
        layer.borderColor = borderColor
        layer.borderWidth = borderWidth
        clipsToBounds = true
        layer.masksToBounds = masksToBounds
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = 1.0
        layer.shadowOffset = shadowOffset
        layer.shadowColor = shadowColor
        self.backgroundColor = backgroundColor
    }
}
