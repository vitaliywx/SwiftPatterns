//
//  ViewController.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit

class MVCViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func showButton(_ sender: Any) {
        showData()
    }
    
    @IBAction func showNextVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "MVP", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MVPViewController")
        show(vc, sender: self)
    }
    
    func setup() {
        self.title = "MVC"
    }
    
    func showData() {
        let randomInt = Int.random(in: 0...Car.cars.count - 1)
        let data = Car.cars[randomInt]
        myLabel.text = data.model.uppercased()
        myImageView.image = UIImage(named: data.imageName)
        myButton.setTitle(data.buttonTitle, for: .normal)
    }
}

