//
//  EditOrderVc.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditOrderVc: UIViewController {
    
    var mainview : EditOrderView!{
        return view as? EditOrderView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = EditOrderView()
        mainview.Collorllection.delegate = self
        mainview.Collorllection.dataSource = self
        mainview.Sizecllection.delegate = self
        mainview.Sizecllection.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Edit Product"
        setupNavigationBar()
        
    }
    


}

extension EditOrderVc : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == mainview.Collorllection{
        return 6
        }else{
            return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mainview.Collorllection{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SizectionViewCell", for: indexPath) as? SizectionViewCell
            cell?.layer.cornerRadius = 5
            cell?.clipsToBounds = true
        
        return cell!
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SizectionViewCell", for: indexPath) as? SizectionViewCell
            cell?.layer.borderWidth = 1
            cell?.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            
            return cell!
        }
    }
    
    
    
}
