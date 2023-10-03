//
//  SplashCollectionVC.swift
//  FoodieApp
//
//  Created by cguser on 03/10/23.
//

import UIKit

extension SplashVC :  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.headerTxtArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomSplashCollectionViewCell", for: indexPath) as? CustomSplashCollectionViewCell else {return  UICollectionViewCell()}
        cell.headerTxtLbl.text = headerTxtArr[indexPath.row]
        cell.subheaderTxtLbl.text = subTitleTxtArr[indexPath.row]
        cell.splashImg.image = imageArr[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page =  Int(scrollView.contentOffset.x / (scrollView.frame.width ))
        self.currentPage = page
        debugPrint(currentPage)
    }

    

}
