//
//  SplashViewController.swift
//  MovieApp
//
//  Created by Eda on 04.06.2023.
//

import UIKit
import SnapKit

protocol SplashViewInterface: AnyObject {
    func setViewColor()
    func setUpLabel()
    func showToast()
    func present()
    func displayLabelValue()
    func animateLabel()
}

final class SplashViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = Color.appBase
        label.font = FuturaFont.condensedExtraBold.of(size: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()
    
    lazy var viewModel: SplashViewModelInterface = SplashViewModel(view: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        label.alpha = 0.0
        view.addSubview(label)
    }
    
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
        animateLabel()
        }
 
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - SplashViewController
extension SplashViewController: SplashViewInterface {
    func setViewColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.systemPink.cgColor, UIColor.white.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    

    func animateLabel() {
        UIView.animate(withDuration: 8.0, delay: 0.8, options: .curveEaseOut, animations: {
            self.label.alpha = 1.0
            self.label.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }, completion: nil)
    }
    
    func setUpLabel() {
        self.label.isHidden = false
        self.view.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.width.equalToSuperview().multipliedBy(0.3)
        }
    }
    
    func showToast() {
        self.showToast(title: "Error", text: "There's no internet connection.", delay: 2)
    }
    
    func present() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.navigationController?.pushViewController(HomeViewController(), animated: false)
        }
    }
    
    func displayLabelValue() {
        DispatchQueue.main.async { [self] in
            label.text = viewModel.remoteConfig?.configValue(forKey: .labelText).stringValue ?? ""
        }
    }
}
