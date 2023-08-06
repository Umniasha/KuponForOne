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



class MainViewController: UIViewController, MainVCDelegat{
   
    

   
    var coupons = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? RaffleViewController {
            vc.delegate = self
            vc.coupons = coupons
        } else if let vc = segue.destination as? CouponsViewController {
            vc.coupons = coupons

        }
       
       
        
        
        }
    
    
    func update(text: Int) {
        coupons = text
       
    }
   
    @IBAction  func toMainVC( _ unwindSegue: UIStoryboardSegue){
       
       
    }
    
    
    
}

