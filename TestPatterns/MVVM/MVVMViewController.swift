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
    }
    
    @IBAction func showMVP(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "VIPER", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "VIPERViewController")
//        vc.title = "VIPER"
//        show(vc, sender: self)
    }

    private func setupView() {
        myButton.setTitle("Change", for: .highlighted)
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
