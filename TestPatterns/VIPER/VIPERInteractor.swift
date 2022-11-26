//
//  VIPERInteractor.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 23.11.2022
//
import UIKit

protocol VIPERInteractorProtocol: AnyObject {
    func loadData()
}


class VIPERInteractor: VIPERInteractorProtocol {
    
    weak var presenter: VIPERPresenterProtocol?
        
    func loadData() {
        let randomInt = Int.random(in: 0...Car.cars.count - 1)
        let data = Car.cars[randomInt]
        let image = data.color
        let text = data.model.uppercased()
        self.presenter?.didLoad(image: (UIImage(named: image) ?? UIImage(systemName: "xmark.octagon")!))
        self.presenter?.didLoad(text: text)
    }
}

