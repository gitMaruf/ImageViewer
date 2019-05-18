//
//  ViewController.swift
//  ImageViewer
//
//  Created by Maruf Howlader on 5/17/19.
//  Copyright © 2019 Creative Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var products : [Product]?
    private let identifer = "productCell"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products = [
            Product(name: "This is my first image", ImageName: "One", largeImageName: "OneX"),
              Product(name: "This is my second image", ImageName: "Two", largeImageName: "TwoX")
        ]
    }

     func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return products?.count ?? 0
    }
    
     func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        guard let products = products else { return cell }
        
        cell.textLabel?.text = products[indexPath.row].name
        
        if let proImage = products[indexPath.row].ImageName{
            cell.imageView?.image = UIImage(named: proImage)
        }
       
        
        
        return cell;
    }
    
   
}

