# VLPin

[![Version](https://img.shields.io/cocoapods/v/VLPin.svg?style=flat)](http://cocoapods.org/pods/VLPin)
[![License](https://img.shields.io/cocoapods/l/VLPin.svg?style=flat)](http://cocoapods.org/pods/VLPin)
[![Platform](https://img.shields.io/cocoapods/p/VLPin.svg?style=flat)](http://cocoapods.org/pods/VLPin)

An easy way to deal with Auto Layout programmatically and avoid the mess of Storyboard and xib files.
VLPin is an extension which adds methods in `UIView` and is built on top of the `NSLayoutAnchor` API.

## Example

To pin `view` on top of `containerView`.
```swift
view.pin(on: .top(10), of: containerView)
```

## Installation

VLPin is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "VLPin"
```

## Author

vandilsonlima, vandilson.lim4@gmail.com

## License

VLPin is available under the MIT license. See the LICENSE file for more info.
