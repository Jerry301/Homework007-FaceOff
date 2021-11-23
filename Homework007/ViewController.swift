//
//  ViewController.swift
//  Homework007
//
//  Created by Chun-Yi Lin on 2021/11/23.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var glassesImage: UIImageView!
    @IBOutlet weak var bodyImage: UIImageView!
    @IBOutlet weak var faceImage: UIImageView!
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var facialImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bodyChange(_ sender: UIButton) {
        let bodyImages = sender.currentImage
        bodyImage.image = bodyImages
    }
    
    @IBAction func headChange(_ sender: UIButton) {
        let headImages = sender.currentImage
        headImage.image = headImages
    }
    
    @IBAction func glassesChange(_ sender: UIButton) {
        let glassesImages = sender.currentImage
        glassesImage.image = glassesImages
    }
    
    @IBAction func faceChange(_ sender: UIButton) {
        let faceImages = sender.currentImage
        faceImage.image = faceImages
    }
    
    @IBAction func facialChange(_ sender: UIButton) {
        let facialImages = sender.currentImage
        facialImage.image = facialImages
    }
    
    
    @IBAction func randomChoose(_ sender: UIButton) {
        let glassesMatrix : [UIImage?] = [UIImage(named: "Glasses"), UIImage(named: "Glasses 2"), UIImage(named: "Glasses 3"), UIImage(named: "Glasses 4"), UIImage(named: "Glasses 5")]
        let bodyMatrix : [UIImage?] = [UIImage(named: "Dress"), UIImage(named: "Fur Jacket"), UIImage(named: "Killer"), UIImage(named: "Pointing Up"), UIImage(named: "Sporty Tee")]
        let headMatrix : [UIImage?] = [UIImage(named: "Buns"), UIImage(named: "Hijab"), UIImage(named: "Shaved 3"), UIImage(named: "Short 3"), UIImage(named: "Twists")]
        let faceMatrix : [UIImage?] = [UIImage(named: "Cheeky"), UIImage(named: "Driven"), UIImage(named: "Hectic"), UIImage(named: "Smile LOL"), UIImage(named: "Tired")]
        let facialMatrix : [UIImage?] = [UIImage(named: "Full 3"), UIImage(named: "Goatee 2"), UIImage(named: "Moustache 4"), UIImage(named: "Moustache 5"), UIImage(named: "Moustache 7")]
        
        let number = Int.random(in: 0...4)
        glassesImage.image = glassesMatrix[number]
        bodyImage.image = bodyMatrix[number]
        headImage.image = headMatrix[number]
        faceImage.image = faceMatrix[number]
        facialImage.image = facialMatrix[number]
    }
    
}

