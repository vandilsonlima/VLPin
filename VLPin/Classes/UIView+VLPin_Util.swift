//
//  UIView+VLPin_Util.swift
//  Pods-VLPin_Example
//
//  Created by Vandilson Lima on 09/07/17.
//

import UIKit

extension UIView {
    
    func make(view: UIView, constraint: NSLayoutConstraint,
             priority: UILayoutPriority) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
}
