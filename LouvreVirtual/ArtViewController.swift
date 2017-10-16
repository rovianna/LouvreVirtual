//
//  ArtViewController.swift
//  LouvreVirtual
//
//  Created by Swift on 26/07/17.
//  Copyright © 2017 Swift. All rights reserved.
//

import UIKit

class ArtViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var tvDescription: UITextView!
    
    
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - IBActions
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
