//
//  ViewController.swift
//  VLPin
//
//  Created by vandilsonlima on 07/05/2017.
//  Copyright (c) 2017 vandilsonlima. All rights reserved.
//

import UIKit
import VLPin

class ViewController: UIViewController {

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        let view1 = UIView()
        view1.backgroundColor = .red
        view.addSubview(view1)
        
        view1.pin(on: [.top(10), .leading(10), .bottom(-10), .trailing(-10)], of: view)
        
    }
}
