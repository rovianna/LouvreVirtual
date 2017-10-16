//
//  RadarViewController.swift
//  LouvreVirtual
//
//  Created by Swift on 26/07/17.
//  Copyright © 2017 Swift. All rights reserved.
//

import UIKit

class RadarViewController: UIViewController {
    
    //TOC: Trabalhar a Organização do Código
    
    //MARK: - IBOutlets
    @IBOutlet weak var viRadar: UIView!
    @IBOutlet weak var viLabels: UIView!
    @IBOutlet weak var ivRadarFront: UIImageView!
    
    //MARK: - Properties
    let artworks:[Int: Artwork] = [
        1: Artworks.monalisa,
        2: Artworks.virgemmenino,
        3: Artworks.balsaMedusa,
        4: Artworks.bodasCana,
        5: Artworks.venusmilo
    ]
    
    
    //MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK: - IBActions
    @IBAction func changeRadar(_ sender: UISwitch) {
        viRadar.isHidden = !sender.isOn
        viLabels.isHidden = sender.isOn
        if sender.isOn {
            runRadar()
        } else {
            stopRadar()
        }
    }

    //MARK: - Methods
    func runRadar() {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.duration = 2.5
        rotationAnimation.byValue = Double.pi * 2.0
        rotationAnimation.repeatCount = Float.infinity
        ivRadarFront.layer.add(rotationAnimation, forKey: nil)
    }
    
    func stopRadar() {
        ivRadarFront.layer.removeAllAnimations()
    }
    
    
    
}
