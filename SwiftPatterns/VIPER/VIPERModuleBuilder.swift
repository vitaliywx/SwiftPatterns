//
//  VIPERModuleBuilder.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 23.11.2022
//

import UIKit

class VIPERModuleBuilder {
    static func build() -> VIPERViewController {
        let interactor = VIPERInteractor()
        let router = VIPERRouter()
        let presenter = VIPERPresenter(interactor: interactor, router: router)
        let storyboard = UIStoryboard(name: "VIPER", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "VIPERViewController") as! VIPERViewController
        viewController.title = "VIPER"
        presenter.view  = viewController
        viewController.presenter = presenter
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }
}
