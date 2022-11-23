//
//  MVPViewController.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit

class MVPViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    private var data: [Car] = []
    private let presenter = MVPPresenter()
    private weak var outputDelegate: MVPOutputDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setInputDelegate(inputDelegate: self)
        self.outputDelegate = presenter
        self.outputDelegate?.getData()
        setupView()
    }
    
    @IBAction func showButton(_ sender: Any) {
        displayData()
    }
    
    func setupView() {
        myButton.setTitle("Change", for: .highlighted)
    }
}


extension MVPViewController: MVPInputDelegate {
    func setupInitialState() {
        displayData()
    }
    
    func setupData(with data: [Car]) {
        self.data = data
    }
    
    func displayData() {
        let randomInt = Int.random(in: 0...Car.cars.count - 1)
        myLabel.text = data[randomInt].model.uppercased()
        myImageView.image = UIImage(named: data[randomInt].color)
    }
}
