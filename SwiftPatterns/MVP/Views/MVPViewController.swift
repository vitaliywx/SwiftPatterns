//
//  MVPViewController.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit

protocol MVPViewProtocol: AnyObject {
    func showData(image: UIImage, text: String, buttonTitle: String)
}


class MVPViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    var presenter: MVPPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupView()
    }
    
    @IBAction func showButton(_ sender: Any) {
        presenter?.didLoad()
    }
    
    @IBAction func showNextVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "MVVM", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MVVMViewController")
        show(vc, sender: self)
    }
    
    func setup() {
        let viewController = self
        let presenter = MVPPresenter()
        presenter.viewController = viewController
        viewController.presenter = presenter
        viewController.title = "MVP"
    }
    
    func setupView() {
        // view settings (form, color, layout etc.)
    }
}


extension MVPViewController: MVPViewProtocol {
    func showData(image: UIImage, text: String, buttonTitle: String) {
        self.myImageView.image = image
        self.myLabel.text = text
        self.myButton.setTitle(buttonTitle, for: .normal)
    }    
}
