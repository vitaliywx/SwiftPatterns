//
//  MVPPresentes.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit


protocol MVPPresenterProtocol: AnyObject {
    func didLoad()
}


class MVPPresenter {
    weak var viewController: MVPViewProtocol?
}


extension MVPPresenter: MVPPresenterProtocol {
    func didLoad() {
        let data = Car.cars
        let randomInt = Int.random(in: 0...data.count - 1)
        let item = data[randomInt]
        
        guard let image = UIImage(named: item.color) else { return }
        let text = item.model.uppercased()
        let buttonTitle = item.buttonTitle
        
        viewController?.showData(image: image, text: text, buttonTitle: buttonTitle)
    }
}
