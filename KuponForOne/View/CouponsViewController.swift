//
//  CouponsViewController.swift
//  KuponForOne
//
//  Created by Oleg Arnaut  on 04.08.2023.
//

import UIKit

class CouponsViewController: UIViewController {

    @IBOutlet weak var couponsLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        couponsLable.text = "\(coupons)"
        
    }
    
    
    
 
}
