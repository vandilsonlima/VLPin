# VLPin

[![Version](https://img.shields.io/cocoapods/v/VLPin.svg?style=flat)](http://cocoapods.org/pods/VLPin)
[![License](https://img.shields.io/cocoapods/l/VLPin.svg?style=flat)](http://cocoapods.org/pods/VLPin)
[![Platform](https://img.shields.io/cocoapods/p/VLPin.svg?style=flat)](http://cocoapods.org/pods/VLPin)

An way to reduce the amount of code required to create Auto Layout programmatically.

VLPin is an extension which adds methods in `UIView` and is built on top of the `NSLayoutAnchor` API.

## Example

To center `view` on `containerView`.
```swift
view.makeCenter(equalTo: containerView)
```

## Installation

VLPin is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'VLPin', :git => 'https://github.com/vandilsonlima/VLPin.git', :branch => 'swift4'
```

## Author

vandilsonlima, vandilson.lim4@gmail.com

## License

VLPin is available under the MIT license. See the LICENSE file for more info.
