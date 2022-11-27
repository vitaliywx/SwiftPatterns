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
        guard let image = UIImage(named: data.imageName) else { return }
        let text = data.model.uppercased()
        let buttonTitle = data.buttonTitle
        
        self.presenter?.didLoad(image: image, text: text, buttonTitle: buttonTitle)
    }
}

