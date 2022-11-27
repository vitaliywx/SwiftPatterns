//
//  VIPERRouter.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 23.11.2022
//

import UIKit

protocol VIPERRouterProtocol {
    func showVC()
}


class VIPERRouter: VIPERRouterProtocol {
    weak var viewController: VIPERViewController?
    
    func showVC() {
        let storyboard = UIStoryboard(name: "CleanSwift", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CleanSwiftViewController")
        viewController?.show(vc, sender: self)
    }
}

