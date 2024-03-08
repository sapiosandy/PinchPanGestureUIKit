//
//  ViewController.swift
//  PinchPanGestureUIKit
//
//  Created by Sandra Gomez on 3/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        myImageView.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
    }
    
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        myImageView.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    
    @IBAction func rotateGesture(_ sender: UIRotationGestureRecognizer) {
        myImageView.transform = CGAffineTransform(rotationAngle: sender.rotation)
    }
    
}

