//
//  CleanSwiftInteractor.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import Foundation

protocol CleanSwiftInteractorLogic {
    func fetchData()
}


protocol CleanSwiftStoreProtocol: AnyObject {
    
}


class CleanSwiftInteractor: CleanSwiftStoreProtocol {
    var presenter: CleanSwiftPresenterLogic?
}


extension CleanSwiftInteractor: CleanSwiftInteractorLogic {
    func fetchData() {
        var model = [Car]()
        model.append(contentsOf: Car.cars)
        self.presenter?.present(data: model)
    }
}
