//
//  SecondVCFactory.swift
//  RxSwiftEx
//
//  Created by Yessen Yermukhanbet on 8/16/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import Foundation
struct SecondVCFactory{
    static func make() -> SecondViewController{
        let viewModel = SecondViewModel()
        let vc = SecondViewController(viewModel: viewModel)
        return vc
    }
}
