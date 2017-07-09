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
    public func pinCenterX(equalTo view: UIView, constant: CGFloat = 0,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint = centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constant)
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinCenterY(equalTo view: UIView, constant: CGFloat = 0,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint = centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        return view.pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinCenter(equalTo view: UIView) -> CenterConstraints {
        return (pinCenterX(equalTo: view), pinCenterY(equalTo: view))
    }
}
