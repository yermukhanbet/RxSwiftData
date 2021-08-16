//
//  SecondViewController.swift
//  RxSwiftEx
//
//  Created by Yessen Yermukhanbet on 8/16/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class SecondViewController: UIViewController {
    let viewModel: SecondViewModel
    private let selectedVariable = BehaviorRelay(value: "")
    var selectedObserver:Observable<String>{
        return selectedVariable.asObservable()
    }
    private lazy var firstButton = TextButton(text: Food.🍏.rawValue, textColor: .white, font: .systemFont(ofSize: 30))
    private lazy var secondButton = TextButton(text: Food.🍔.rawValue, textColor: .white, font: .systemFont(ofSize: 30))
    private lazy var thirdButton = TextButton(text: Food.🍫.rawValue, textColor: .white, font: .systemFont(ofSize: 30))
    private lazy var buttonSV: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    @objc func buttonTouched(_ sender: UIButton){
        guard let text = sender.titleLabel?.text else{return}
        selectedVariable.accept(text)
        self.navigationController?.popViewController(animated: true)
    }
    init(viewModel: SecondViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .white
        self.setButtons()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    private func setButtons(){
        firstButton.addTarget(self, action: #selector(buttonTouched(_:)), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(buttonTouched(_:)), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(buttonTouched(_:)), for: .touchUpInside)
        buttonSV.addArrangedSubview(firstButton)
        buttonSV.addArrangedSubview(secondButton)
        buttonSV.addArrangedSubview(thirdButton)
        self.view.addSubview(buttonSV)
        buttonSV.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        buttonSV.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        buttonSV.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
    }
}
