//
//  UIView+VLPin_Center.swift
//  Pods-VLPin_Example
//
//  Created by Vandilson Lima on 09/07/17.
//

import UIKit

public typealias CenterConstraints = (x: NSLayoutConstraint, y: NSLayoutConstraint)

public extension UIView {
    
    @discardableResult
    public func makeCenterX(equalTo view: UIView, constant: CGFloat = 0,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint = centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constant)
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeCenterY(equalTo view: UIView, constant: CGFloat = 0,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint = centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        return view.make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeCenter(equalTo view: UIView) -> CenterConstraints {
        return (makeCenterX(equalTo: view), makeCenterY(equalTo: view))
    }
}
