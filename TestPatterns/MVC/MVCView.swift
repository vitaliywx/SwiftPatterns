//
//  MVCView.swift
//  TestPatterns
//
//  Created by Vitalii Homoniuk on 23.11.2022.
//

import UIKit

class MVCView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        
    }
}
