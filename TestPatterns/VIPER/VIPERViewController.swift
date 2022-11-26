//
//  VIPERViewController.swift
//  Super easy dev
//
//  Created by Vitalii Homoniuk on 23.11.2022
//

import UIKit

protocol VIPERViewProtocol: AnyObject {
    func showImage(image: UIImage)
    func showText(text: String)
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
    
    @IBAction func showVC(_ sender: Any) {
        presenter?.didTapNextButton()
    }
}


private extension VIPERViewController {
    func setupView() {
        
    }
}


extension VIPERViewController: VIPERViewProtocol {
    func showImage(image: UIImage) {
        DispatchQueue.main.async {
            self.myImageView.image = image
        }
    }
    func showText(text: String) {
        DispatchQueue.main.async {
            self.myLabel.text = text
        }
    }
    
}
