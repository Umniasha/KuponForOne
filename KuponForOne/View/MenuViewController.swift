//
//  MenuViewController.swift
//  KuponForOne
//
//  Created by Oleg Arnaut  on 05.08.2023.
//

import UIKit


class MenuViewController: UIViewController {

    private lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = view.bounds
        scrollView.contentSize = contentSize
        scrollView.contentMode = .scaleToFill
        scrollView.backgroundColor = .black
        return scrollView
    }()
    var myImageView : UIImageView = {
        let myImageView = UIImageView(image: UIImage(named: "menuScreen"))
       
        
        //myImageView.bounds.size = contentSize
        
        return myImageView
    }()
    private var contentSize : CGSize  {
        CGSize(width: view.bounds.width, height: view.bounds.width * 3.15)
    }
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        myImageView.frame.size = contentSize
        myImageView.contentMode = .scaleToFill
        scrollView.addSubview(myImageView)
        backButton()
       
   
         
        
        
    }
    
    private func backButton (){
        
        let button = UIButton(frame: CGRect(x: 10, y: 20, width: 50, height: 50))
        scrollView.addSubview(button)
        button.setBackgroundImage(UIImage(named: "backButton"), for: .normal)
        button.addTarget(self, action: #selector(onClickBackButton), for: .touchUpInside)
        
    }
    
   
    
    
    @objc private func onClickBackButton (){
        dismiss(animated: true)
    }

    

}

