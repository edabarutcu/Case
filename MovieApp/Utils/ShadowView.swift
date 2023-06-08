//
//  ShadowView.swift
//  MovieApp
//
//  Created by Eda on 8.06.2023.
//

import UIKit

class ShadowView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupShadow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupShadow()
    }
    
    private func setupShadow() {
        backgroundColor = .clear
        
        let shadowView = UIView(frame: bounds)
        shadowView.backgroundColor = .white
        shadowView.layer.cornerRadius = 8.0
        
        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: 8.0).cgPath
        shadowLayer.fillColor = UIColor.white.cgColor
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOpacity = 0.2
        shadowLayer.shadowOffset = CGSize(width: 0, height: 2)
        shadowLayer.shadowRadius = 4.0
        
        shadowView.layer.insertSublayer(shadowLayer, at: 0)
        
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        visualEffectView.frame = shadowView.bounds
        visualEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        shadowView.addSubview(visualEffectView)
        addSubview(shadowView)
    }
}
