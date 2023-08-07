//
//  Coupons.swift
//  KuponForOne
//
//  Created by Oleg Arnaut  on 07.08.2023.
//

import Foundation

var coupons = 0

func addCoupons() {
    coupons += 1
    saveData()
}

func saveData(){
    UserDefaults.standard.set(coupons, forKey: "coupons")
    UserDefaults.standard.synchronize()
}

func loadData(){
    if let saveCoupons = UserDefaults.standard.integer(forKey: "coupons") as? Int{
        coupons = saveCoupons
    } else {
        coupons = 0
    }
    
}
