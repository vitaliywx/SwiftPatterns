//
//  CleanSwiftPresenter.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit

protocol CleanSwiftPresenterLogic {
    func present(data: [Car])
}


class CleanSwiftPresenter {
    weak var viewController: CleanSwiftViewLogic?
}


extension CleanSwiftPresenter: CleanSwiftPresenterLogic {
    func present(data: [Car]) {
        let randomInt = Int.random(in: 0...data.count - 1)
        let item = data[randomInt]
        
        guard let image = UIImage(named: item.imageName) else { return }
        let text = item.model.uppercased()
        let buttonTitle = item.buttonTitle
        
        viewController?.showData(image: image, text: text, buttonTitle: buttonTitle)
    }
}
