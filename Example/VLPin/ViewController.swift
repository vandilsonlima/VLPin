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
        
        backgroundView.pinAtEdges(of: view, withMargins: (10, 10, -10, -10))
        
        let squareView = UIView()
        squareView.backgroundColor = .blue
        backgroundView.addSubview(squareView)
        squareView.pinWidth(equalTo: squareSideSize)
        squareView.pinHeight(equalTo: squareSideSize)
        squareView.pinCenter(equalTo: view)
        
        let topSquareView = UIView()
        topSquareView.backgroundColor = .blue
        backgroundView.addSubview(topSquareView)
        topSquareView.pinWidth(equalTo: squareSideSize)
        topSquareView.pinHeight(equalTo: squareSideSize)
        topSquareView.pinCenterX(equalTo: squareView)
        topSquareView.pinBottom(at: .top(-squareSapcing), of: squareView)
        
        let leadingSquareView = UIView()
        leadingSquareView.backgroundColor = .blue
        backgroundView.addSubview(leadingSquareView)
        leadingSquareView.pinWidth(equalTo: squareSideSize)
        leadingSquareView.pinHeight(equalTo: squareSideSize)
        leadingSquareView.pinCenterY(equalTo: squareView)
        leadingSquareView.pinTrailing(at: .leading(-squareSapcing), of: squareView)
        
        let bottomSquareView = UIView()
        bottomSquareView.backgroundColor = .blue
        backgroundView.addSubview(bottomSquareView)
        bottomSquareView.pinWidth(equalTo: squareSideSize)
        bottomSquareView.pinHeight(equalTo: squareSideSize)
        bottomSquareView.pinCenterX(equalTo: squareView)
        bottomSquareView.pinTop(at: .bottom(squareSapcing), of: squareView)
        
        let trailingSquareView = UIView()
        trailingSquareView.backgroundColor = .blue
        backgroundView.addSubview(trailingSquareView)
        trailingSquareView.pinWidth(equalTo: squareSideSize)
        trailingSquareView.pinHeight(equalTo: squareSideSize)
        trailingSquareView.pinCenterY(equalTo: squareView)
        trailingSquareView.pinLeading(at: .trailing(squareSapcing), of: squareView)
    }
}
