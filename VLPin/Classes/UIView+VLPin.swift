//
//  UIView+VLPin.swift
//  Pods
//
//  Created by Vandilson Lima on 05/07/17.
//
import UIKit

public enum Edge {
    case top(CGFloat)
    case trailing(CGFloat)
    case leading(CGFloat)
    case bottom(CGFloat)
}

public typealias EdgeConstraints = (top: NSLayoutConstraint?, leading: NSLayoutConstraint?,
    bottom: NSLayoutConstraint?, trailing:NSLayoutConstraint?)

public typealias CenterConstraints = (x: NSLayoutConstraint, y: NSLayoutConstraint)

public extension UIView {
    
    @discardableResult
    public func pin(on edge: Edge, of view: UIView,
                    withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint!
        switch edge {
        case .top(let value):
            constraint = topAnchor.constraint(equalTo: view.topAnchor, constant: value)
        case .leading(let value):
            constraint = leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: value)
        }
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pin(on edges: [Edge], of view: UIView) -> EdgeConstraints {
        var tuple: EdgeConstraints = (nil, nil, nil, nil)
        edges.forEach { edge in
            let constraint = pin(on: edge, of: view)
            switch edge {
            case .top:
                tuple.top = constraint
            case .leading:
                tuple.leading = constraint
            case .bottom:
                tuple.bottom = constraint
            case .trailing:
                tuple.trailing = constraint
            }
        }
        return tuple
    }
    
    @discardableResult
    public func pin(onEdgesOf view: UIView) -> EdgeConstraints {
        return pin(on: [.top(0), .leading(0), .bottom(0), .trailing(0)], of: view)
    }
    
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
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint = widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: multiplier)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
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
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint = heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: multiplier)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinCenterX(equalTo view: UIView, constant: CGFloat = 0,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinCenterY(equalTo view: UIView, constant: CGFloat = 0,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pinCenter(equalTo view: UIView) -> CenterConstraints {
        return (pinCenterX(equalTo: view), pinCenterY(equalTo: view))
    }
    
    @discardableResult
    public func pin(greaterThanOrEqualTo edge: Edge, of view: UIView,
                    withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint!
        switch edge {
        case .top(let value):
            constraint = topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: value)
        case .leading(let value):
            constraint = leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    public func pin(lessThanOrEqualTo edge: Edge, of view: UIView,
                    withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint!
        switch edge {
        case .top(let value):
            constraint = topAnchor.constraint(lessThanOrEqualTo: view.topAnchor, constant: value)
        case .leading(let value):
            constraint = leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        constraint.priority = priority
        constraint.isActive = true
        return constraint
    }
}
