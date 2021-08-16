//
//  FirstVCFactory.swift
//  RxSwiftEx
//
//  Created by Yessen Yermukhanbet on 8/16/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import Foundation
struct FirstVCFactory{
    static func make() -> FirstViewController{
        let viewModel = FirstViewModel()
        let vc = FirstViewController(viewModel: viewModel)
        return vc
    }
}
