//
//  ViewController.swift
//  Example
//
//  Created by Jonathan Tribouharet

import UIKit
import JTMaterialSpinner

class ViewController: UIViewController {

    var spinnerView = JTMaterialSpinner()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(spinnerView)
        spinnerView.frame = CGRect(x: (375.0 - 50.0) / 2.0, y: 300, width: 50, height: 50)
        
        spinnerView.circleLayer.lineWidth = 2.0
        spinnerView.circleLayer.strokeColor = UIColor.orange.cgColor
        spinnerView.beginRefreshing()
    }

}
