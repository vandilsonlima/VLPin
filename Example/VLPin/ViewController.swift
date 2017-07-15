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
    
    private let squareSideSize: CGFloat = 100
    private let squareSapcing: CGFloat = 20
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = .lightGray
        view.addSubview(backgroundView)
        
        backgroundView.makeEdges(equalTo: view, withMargins: (10, 10, -10, -10))
        
        let squareView = UIView()
        squareView.backgroundColor = .blue
        backgroundView.addSubview(squareView)
        squareView.makeWidth(equalTo: squareSideSize)
        squareView.makeHeight(equalTo: squareSideSize)
        squareView.makeCenter(equalTo: view)
        
        let topSquareView = UIView()
        topSquareView.backgroundColor = .blue
        backgroundView.addSubview(topSquareView)
        topSquareView.makeWidth(equalTo: squareSideSize)
        topSquareView.makeHeight(equalTo: squareSideSize)
        topSquareView.makeCenterX(equalTo: squareView)
        topSquareView.makeBottom(equalTo: .top(-squareSapcing), of: squareView)
        
        let leadingSquareView = UIView()
        leadingSquareView.backgroundColor = .blue
        backgroundView.addSubview(leadingSquareView)
        leadingSquareView.makeWidth(equalTo: squareSideSize)
        leadingSquareView.makeHeight(equalTo: squareSideSize)
        leadingSquareView.makeCenterY(equalTo: squareView)
        leadingSquareView.makeTrailing(equalTo: .leading(-squareSapcing), of: squareView)
        
        let bottomSquareView = UIView()
        bottomSquareView.backgroundColor = .blue
        backgroundView.addSubview(bottomSquareView)
        bottomSquareView.makeWidth(equalTo: squareSideSize)
        bottomSquareView.makeHeight(equalTo: squareSideSize)
        bottomSquareView.makeCenterX(equalTo: squareView)
        bottomSquareView.makeTop(equalTo: .bottom(squareSapcing), of: squareView)
        
        let trailingSquareView = UIView()
        trailingSquareView.backgroundColor = .blue
        backgroundView.addSubview(trailingSquareView)
        trailingSquareView.makeWidth(equalTo: squareSideSize)
        trailingSquareView.makeHeight(equalTo: squareSideSize)
        trailingSquareView.makeCenterY(equalTo: squareView)
        trailingSquareView.makeLeading(equalTo: .trailing(squareSapcing), of: squareView)
    }
}
