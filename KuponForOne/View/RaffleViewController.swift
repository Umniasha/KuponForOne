//
//  RaffleViewController.swift
//  KuponForOne
//
//  Created by Oleg Arnaut  on 05.08.2023.
//

import UIKit

class RaffleViewController: UIViewController {
    
    weak var delegate: MainVCDelegat?
    var coupons = 0
    private var indexForArray: Int = 0
    private var randomValue = 0
    private var repitNumber = 0
    
    @IBOutlet weak var winner: UIImageView!
    @IBOutlet private var PlayerImage: [UIImageView]!
   
    @IBOutlet var playerNameCollection: [UILabel]!

    private let nameArray = ["OLIVER", "JACK", "HARRY", "JACOB", "CHARLY", "THOMAS", "GEORGE", "OSCAR"]
    
    private var timer = Timer()
    private let selectedImage = UIImage(named: "selectedPlayer")
    private let notSelectedImage = UIImage(named: "notSelectedPlayer")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(coupons)
        setPlayerName(array: nameArray)
       
    }
    
    @IBAction func backButton(_ sender: Any) {
        delegate?.update(text: coupons)
    }
    
    private func setPlayerName (array: [String]){
        for player in playerNameCollection {
            
           
            player.text = array.randomElement()
           
            
        }
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
          
               

        }
        
        
            
        
    }
    @objc private func winnerHidden (){
        
            winner.isHidden = true
            timer.invalidate()
    }
    
 
    
    

}
