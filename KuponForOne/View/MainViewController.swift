//
//  ViewController.swift
//  KuponForOne
//
//  Created by Oleg Arnaut  on 04.08.2023.
//

import UIKit

protocol MainVCDelegat: AnyObject {
    func update(text: Int)
}



class MainViewController: UIViewController/*, MainVCDelegat*/{
   
    

   
    var coupons = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
    

    
   
    
    
   
    @IBAction  func toMainVC( _ unwindSegue: UIStoryboardSegue){
       
       
    }
    
    
    
}

