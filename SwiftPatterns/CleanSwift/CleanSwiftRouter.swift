//
//  CleanSwiftRouter.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import Foundation
import UIKit

protocol CleanSwiftRouterLogic: AnyObject {
    func showVC()
}


class CleanSwiftRouter {
    weak var viewController: UIViewController?
}


extension CleanSwiftRouter: CleanSwiftRouterLogic {
    func showVC() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(
            withIdentifier: "MVCViewController") as? MVCViewController else { return }
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
