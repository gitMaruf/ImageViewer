//
//  ProductViewController.swift
//  ImageViewer
//
//  Created by Maruf Howlader on 5/18/19.
//  Copyright © 2019 Creative Young. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

   
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var image: UIImageView!
    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productName.text = product?.name
        if let currentImage = product?.largeImageName{
            image.image = UIImage(named: currentImage)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
