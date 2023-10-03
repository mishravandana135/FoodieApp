//
//  SplashVC.swift
//  FoodieApp
//
//  Created by cguser on 03/10/23.
//

import UIKit

class SplashVC: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControlFirst: UIPageControl!
    @IBOutlet weak var skipBtn: UIButton!

    var currentPage = 0 {
        didSet {
            self.pageControlFirst.currentPage = self.currentPage
        }
    }
    
    let headerTxtArr = ["Discover Place Near You","Choose A Testy Dish","Pick Up Or Delivery"]
    let subTitleTxtArr = ["We make it simple to find the food you crave. Enter your address and let us do the rest.","We make it simple to find the food you crave. Enter your address and let us do the rest.","We make it simple to find the food you crave. Enter your address and let us do the rest."]
    let imageArr = [UIImage.init(imageLiteralResourceName: "spleshImg1"),UIImage.init(imageLiteralResourceName: "spleshImg2"),UIImage.init(imageLiteralResourceName: "spleshImg3")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    private func setUI() {
        // PageControl
        self.pageControlFirst.numberOfPages = headerTxtArr.count
        self.pageControlFirst.currentPage = 0
        self.pageControlFirst.backgroundColor = .clear
    }
    
    @IBAction func skipBtnAction(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


