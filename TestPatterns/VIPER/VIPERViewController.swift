//
//  VIPERViewController.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 23.11.2022
//

import UIKit

protocol VIPERViewProtocol: AnyObject {
    func showData(image: UIImage, text: String, buttonTitle: String)
}


class VIPERViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    var presenter: VIPERPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    @IBAction func showButton(_ sender: Any) {
        presenter?.didTapButton()
    }
    
    @IBAction func showNextVC(_ sender: Any) {
        presenter?.didTapNextButton()
    }
    
    private func setupView() {
        // view settings (form, color, layout etc.)
    }
}


extension VIPERViewController: VIPERViewProtocol {
    func showData(image: UIImage, text: String, buttonTitle: String) {
        self.myImageView.image = image
        self.myLabel.text = text
        self.myButton.setTitle(buttonTitle, for: .normal)
    }
}
