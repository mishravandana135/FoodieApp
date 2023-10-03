//
//  ViewController.swift
//  FoodieApp
//
//  Created by cguser on 28/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)){
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SplashVC") as! SplashVC
            self.navigationController?.pushViewController(vc, animated: true)
       }
    }


}

