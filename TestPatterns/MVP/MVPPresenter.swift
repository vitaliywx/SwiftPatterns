//
//  MVPPresentes.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import Foundation

protocol MVPInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with data: [Car])
    func displayData()
}

protocol MVPOutputDelegate: AnyObject {
    func getData()
    func saveData()
}

class MVPPresenter {
    private weak var inputDelegate: MVPInputDelegate?
    var cars = Car.cars
    
    func setInputDelegate(inputDelegate: MVPInputDelegate) {
        self.inputDelegate = inputDelegate
    }
    
    private func loadData() {
        self.inputDelegate?.setupData(with: cars)
    }
}

extension MVPPresenter: MVPOutputDelegate {
    func getData() {
        self.loadData()
    }
    
    func saveData() {
        
    }
}
