//
//  MVVMViewController.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit

class MVVMViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    var viewModel = MVVMViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        bindViewModel()
    }
    
    @IBAction func showButton(_ sender: Any) {
        viewModel.buttonPressed()
        self.myButton.setTitle(viewModel.buttonTitle, for: .normal)
    }
    
    @IBAction func showNextVC(_ sender: Any) {
        let vc = VIPERModuleBuilder.build()
        show(vc, sender: self)
    }

    private func setupView() {
        // view settings (form, color, layout etc.)
        self.title = "MVVM"
    }
    
    func bindViewModel() {
        viewModel.labelText.bind { labelText in
            DispatchQueue.main.async {
                self.myLabel.text = labelText
            }
        }
        viewModel.image.bind { image in
            DispatchQueue.main.async {
                self.myImageView.image = UIImage(named: image)
            }
        }
    }
}
