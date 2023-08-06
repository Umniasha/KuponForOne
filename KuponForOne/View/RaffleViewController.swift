//
//  RaffleViewController.swift
//  KuponForOne
//
//  Created by Oleg Arnaut  on 05.08.2023.
//

import UIKit

class RaffleViewController: UIViewController {
    
    private var coupons = 0
    private var indexForArray: Int = 0
    private var randomValue = 0
    private var repitNumber = 0
    
    @IBOutlet weak var winner: UIImageView!
    @IBOutlet private var PlayerImage: [UIImageView]!
    
    private var timer = Timer()
    private let selectedImage = UIImage(named: "selectedPlayer")
    private let notSelectedImage = UIImage(named: "notSelectedPlayer")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction private func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction private func speenButton(_ sender: UIButton) {
        winner.isHidden = true
        if !timer.isValid{
            randomValue = Int.random(in: 5...15)
            timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(speen), userInfo: nil, repeats: true)
        }
        
      }
    
    @objc private func speen(){
        repitNumber += 1
        if repitNumber == randomValue {
            timer.invalidate()
            repitNumber = 0
            if indexForArray == 1{
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(winnerHidden), userInfo: nil, repeats: false)
                winner.isHidden = false
                coupons += 1
                print(coupons)
            }
        } else {

            for index in PlayerImage.indices {

                    if index == indexForArray {
                        PlayerImage[index].image = selectedImage
                        PlayerImage[index].contentMode = .scaleAspectFill
                    } else {
                        PlayerImage[index].image = notSelectedImage
                    }
                }
                if indexForArray == PlayerImage.count - 1 {
                    indexForArray = 0
                } else{
                    indexForArray += 1
                }
          
                print(repitNumber,randomValue)

        }
        
        
            
        
    }
    @objc private func winnerHidden (){
        
            winner.isHidden = true
            timer.invalidate()
        
        
    }
    
    

}
