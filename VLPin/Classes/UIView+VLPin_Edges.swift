//
//  UIView+VLPin.swift
//  Pods
//
//  Created by Vandilson Lima on 05/07/17.
//
import UIKit

public enum XEdge {
    case leading(CGFloat)
    case trailing(CGFloat)
}

public enum YEdge {
    case top(CGFloat)
    case bottom(CGFloat)
}

public typealias EdgeConstraints = (top: NSLayoutConstraint?, leading: NSLayoutConstraint?,
                                    bottom: NSLayoutConstraint?, trailing: NSLayoutConstraint?)

public typealias Margins = (top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat)

public extension UIView {
    
    @discardableResult
    public func pinTop(at yEdge: YEdge, of view: UIView,
                        withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = topAnchor.constraint(equalTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = topAnchor.constraint(equalTo: view.bottomAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinBottom(at yEdge: YEdge, of view: UIView,
                       withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = bottomAnchor.constraint(equalTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinLeading(at xEdge: XEdge, of view: UIView,
                          withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinTrailing(at xEdge: XEdge, of view: UIView,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinAtEdges(of view: UIView,
                           withMargins margins: Margins = (0, 0, 0, 0)) -> EdgeConstraints {
        return (
            pinTop(at: .top(margins.top), of: view),
            pinLeading(at: .leading(margins.leading), of: view),
            pinBottom(at: .bottom(margins.bottom), of: view),
            pinTrailing(at: .trailing(margins.trailing), of: view)
        )
    }
}

extension UIView {
    
    @discardableResult
    public func pinTrailing(greaterThanOrEqualTo xEdge: XEdge, of view: UIView,
                            withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = trailingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinLeading(greaterThanOrEqualTo xEdge: XEdge, of view: UIView,
                            withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = leadingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinTop(greaterThanOrEqualTo yEdge: YEdge, of view: UIView,
                       withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = topAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinBottom(greaterThanOrEqualTo yEdge: YEdge, of view: UIView,
                       withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = bottomAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
}

extension UIView {
    
    @discardableResult
    public func pinTrailing(lessThanOrEqualTo xEdge: XEdge, of view: UIView,
                            withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = trailingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinLeading(lessThanOrEqualTo xEdge: XEdge, of view: UIView,
                           withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = leadingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinTop(lessThanOrEqualTo yEdge: YEdge, of view: UIView,
                       withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = topAnchor.constraint(lessThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = topAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func pinBottom(lessThanOrEqualTo yEdge: YEdge, of view: UIView,
                          withPriority priority: UILayoutPriority = UILayoutPriorityRequired) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = bottomAnchor.constraint(lessThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return pin(view: view, constraint: constraint, priority: priority)
    }
}
