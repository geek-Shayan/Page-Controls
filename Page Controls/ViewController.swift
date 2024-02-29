//
//  ViewController.swift
//  Page Controls
//
//  Created by SHAYANUL HAQ SADI on 1/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var pageControl: AdvancedPageControlView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.drawer = ExtendedDotDrawer(numberOfPages: 5,
                                                space: 16.0,
                                                indicatorColor: UIColor.green,
                                                dotsColor: .gray,
                                                isBordered: true,
                                                borderWidth: 0.0,
                                                indicatorBorderColor: .blue,
                                                indicatorBorderWidth: 0.0)
    }

    var value = 0

    @IBAction func buttonTapped(_ sender: Any) {
        
//        let value = Int.random(in: 0 ... 4)
        
        if value < 4 {
            value += 1
            pageControl.setPage( value )
        }
        else {
            value = 0
            pageControl.setPage( value )
        }
        
    }
}

