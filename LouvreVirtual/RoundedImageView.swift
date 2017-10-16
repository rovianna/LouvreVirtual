//
//  RoundedImageView.swift
//  LouvreVirtual
//
//  Created by Swift on 26/07/17.
//  Copyright © 2017 Swift. All rights reserved.
//

import UIKit

@IBDesignable class RoundedImageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        //Property Observer (Observador de propriedade)
        didSet {
            print("Vai ser executado!!!")
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .white {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
