//
//  FirstViewModel.swift
//  RxSwiftEx
//
//  Created by Yessen Yermukhanbet on 8/16/21.
//  Copyright © 2021 Yessen Yermukhanbet. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class FirstViewModel{
    private let selectedVariable = BehaviorRelay(value: "")
    var selectedObserver: Observable<String>{
        return selectedVariable.asObservable()
    }
    public func receivedFoodType(food: Food){
        switch food{
        case .🍏:
            selectedVariable.accept("Good healthy choice!")
        case .🍔:
            selectedVariable.accept("Cheat day?!")
        case .🍫:
            selectedVariable.accept("I hope it is protein bar!")
        case .none:
            selectedVariable.accept("")
        }
    }
}
