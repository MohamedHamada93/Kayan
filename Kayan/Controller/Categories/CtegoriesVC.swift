//
//  CtegoriesVC.swift
//  Kayan
//
//  Created by Moe on 11/10/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CtegoriesVC: UIViewController {

    var mainview : CatecoriesView!{
        return view as? CatecoriesView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = CatecoriesView()
        mainview.CategoryCollction.delegate = self
        mainview.CategoryCollction.dataSource = self
        mainview.ProduCollction.delegate = self
        mainview.ProduCollction.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationBar()
        navgition()
        
    }
    
    func navgition(){
        //    self.navigationController?.navigationBar.layer.applySketchShadow()
        let logo = UIImage(named: "logo dark")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }
    
    

}


extension CtegoriesVC : UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == mainview.CategoryCollction{
        return 6
        }else{
            return 5
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mainview.CategoryCollction{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell
        
        return cell!
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCells", for: indexPath) as? ProductCells
            cell?.layer.borderWidth = 1
            cell?.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            
            return cell!
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if collectionView == mainview.CategoryCollction{
        return CGSize(width: 70.0, height: 80)
        }else{
              return CGSize(width: 180.0, height: 350.0)
        }
    }
    
    
    
}
