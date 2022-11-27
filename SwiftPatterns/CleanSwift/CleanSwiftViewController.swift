//
//  CleanSwiftViewController.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit

protocol CleanSwiftViewLogic: AnyObject  {
    func showData(image: UIImage, text: String, buttonTitle: String)
}


class CleanSwiftViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    private(set) var router: CleanSwiftRouterLogic?
    private var interactor: CleanSwiftInteractorLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupView()
    }
    
    @IBAction func showButton(_ sender: Any) {
        interactor?.fetchData()
    }
    
    @IBAction func showNextVC(_ sender: Any) {
        router?.showVC()
    }
    
    private func setup() {
        let viewController = self
        let presenter = CleanSwiftPresenter()
        let interactor = CleanSwiftInteractor()
        let router = CleanSwiftRouter()
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        viewController.router = router
        viewController.title = "Clean Swift"
        router.viewController = viewController
    }
    
    private func setupView() {
        // view settings (form, color, layout etc.)
    }
}


extension CleanSwiftViewController: CleanSwiftViewLogic {
    func showData(image: UIImage, text: String, buttonTitle: String) {
        self.myImageView.image = image
        self.myLabel.text = text
        self.myButton.setTitle(buttonTitle, for: .normal)
    }
}
