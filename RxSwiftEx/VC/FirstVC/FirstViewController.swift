//
//  FirstViewController.swift
//  RxSwiftEx
//
//  Created by Yessen Yermukhanbet on 8/16/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import UIKit
import RxSwift
class FirstViewController: UIViewController {
    private let viewModel: FirstViewModel
    private let disposeBag = DisposeBag()
    private lazy var changeButton = TextButton(text: "Choose your menu", textColor: .white,color: .black, font: .systemFont(ofSize: 20))
    init(viewModel: FirstViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func changeButtonPressed(){
        let vc = SecondVCFactory.make()
        vc.selectedObserver.subscribe(onNext: {
            [weak self] selected in
            self?.title = selected
            }).disposed(by: disposeBag)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = .white
        self.setViews()
    }
    override func viewDidLoad() {
        self.title = "👀"
        super.viewDidLoad()
    }
    private func bind(){
        
    }
    private func setViews(){
        changeButton.addTarget(self, action: #selector(changeButtonPressed), for: .touchUpInside)
        self.view.addSubview(changeButton)
        changeButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        changeButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        changeButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        changeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
