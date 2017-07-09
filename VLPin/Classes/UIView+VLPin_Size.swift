//
//  UIView+VLPin_Size.swift
//  Pods-VLPin_Example
//
//  Created by Vandilson Lima on 09/07/17.
//
import UIKit

extension UIView {
    
    @discardableResult
    public func pinWidth(equalTo width: CGFloat,
                          withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = widthAnchor.constraint(equalToConstant: width)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinWidth(equalTo view: UIView, multiplier: CGFloat = 1,
                         withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint = widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: multiplier)
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinHeight(equalTo height: CGFloat,
                          withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = heightAnchor.constraint(equalToConstant: height)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinHeight(equalTo view: UIView, multiplier: CGFloat = 1,
                          withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint = heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: multiplier)
        return pin(view: view, constraint: constraint, priority: priority)
    }
}
