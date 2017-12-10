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
    public func makeTop(equalTo yEdge: YEdge, of view: UIView,
                        withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = topAnchor.constraint(equalTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = topAnchor.constraint(equalTo: view.bottomAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeBottom(equalTo yEdge: YEdge, of view: UIView,
                           withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = bottomAnchor.constraint(equalTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeLeading(equalTo xEdge: XEdge, of view: UIView,
                            withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeTrailing(equalTo xEdge: XEdge, of view: UIView,
                             withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeEdges(equalTo view: UIView,
                           withMargins margins: Margins = (0, 0, 0, 0)) -> EdgeConstraints {
        return (
            makeTop(equalTo: .top(margins.top), of: view),
            makeLeading(equalTo: .leading(margins.leading), of: view),
            makeBottom(equalTo: .bottom(margins.bottom), of: view),
            makeTrailing(equalTo: .trailing(margins.trailing), of: view)
        )
    }
}

extension UIView {
    
    @discardableResult
    public func makeTrailing(greaterThanOrEqualTo xEdge: XEdge, of view: UIView,
                             withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = trailingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeLeading(greaterThanOrEqualTo xEdge: XEdge, of view: UIView,
                            withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = leadingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeTop(greaterThanOrEqualTo yEdge: YEdge, of view: UIView,
                        withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = topAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeBottom(greaterThanOrEqualTo yEdge: YEdge, of view: UIView,
                           withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = bottomAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(greaterThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
}

extension UIView {
    
    @discardableResult
    public func makeTrailing(lessThanOrEqualTo xEdge: XEdge, of view: UIView,
                             withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = trailingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeLeading(lessThanOrEqualTo xEdge: XEdge, of view: UIView,
                            withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch xEdge {
        case .leading(let value):
            constraint = leadingAnchor.constraint(lessThanOrEqualTo: view.leadingAnchor, constant: value)
        case .trailing(let value):
            constraint = leadingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeTop(lessThanOrEqualTo yEdge: YEdge, of view: UIView,
                        withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = topAnchor.constraint(lessThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = topAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
    
    @discardableResult
    public func makeBottom(lessThanOrEqualTo yEdge: YEdge, of view: UIView,
                           withPriority priority: UILayoutPriority = UILayoutPriority.required) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint!
        switch yEdge {
        case .top(let value):
            constraint = bottomAnchor.constraint(lessThanOrEqualTo: view.topAnchor, constant: value)
        case .bottom(let value):
            constraint = bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: value)
        }
        return make(view: view, constraint: constraint, priority: priority)
    }
}
